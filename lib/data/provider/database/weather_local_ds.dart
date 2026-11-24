import 'package:drift/drift.dart';

import '../../../utils/helper/app_logger.dart';
import '../../models/current_weather.dart';
import '../../models/daily_weather.dart';
import '../../models/hourly_weather.dart';
import '../../models/weather_data.dart';
import 'app_database.dart';

class WeatherLocalDs {
  WeatherLocalDs(this._db);

  final AppDatabase _db;

  Future<void> saveWeather(String locationKey, WeatherData weather) async {
    try {
      await _db.transaction(() async {
        await _db
            .into(_db.currentWeatherCache)
            .insertOnConflictUpdate(
              CurrentWeatherCacheCompanion.insert(
                locationKey: locationKey,
                cityName: weather.cityName,
                temperature: weather.current.temperature,
                weatherCode: weather.current.weatherCode,
                windSpeed: weather.current.windSpeed,
                humidity: weather.current.humidity,
                rainChance: Value(weather.current.rainChance),
                isDay: weather.current.isDay,
                utcOffsetSeconds: weather.utcOffsetSeconds,
                fetchedAt: weather.fetchedAt,
              ),
            );
        await (_db.delete(
          _db.hourlyWeatherCache,
        )..where((t) => t.locationKey.equals(locationKey))).go();
        await (_db.delete(
          _db.dailyWeatherCache,
        )..where((t) => t.locationKey.equals(locationKey))).go();
        await _db.batch((batch) {
          batch.insertAll(_db.hourlyWeatherCache, [
            for (final hour in weather.hourly)
              HourlyWeatherCacheCompanion.insert(
                locationKey: locationKey,
                time: hour.time,
                temperature: hour.temperature,
                weatherCode: hour.weatherCode,
                isDay: hour.isDay,
              ),
          ]);
          batch.insertAll(_db.dailyWeatherCache, [
            for (final day in weather.daily)
              DailyWeatherCacheCompanion.insert(
                locationKey: locationKey,
                date: day.date,
                weatherCode: day.weatherCode,
                maxTemp: day.maxTemp,
                minTemp: day.minTemp,
                windSpeed: day.windSpeed,
                humidity: day.humidity,
                rainChance: day.rainChance,
              ),
          ]);
        });
      });
      appLogger.i(
        'saveWeather ✓ $locationKey (${weather.hourly.length} hours, ${weather.daily.length} days)',
      );
    } catch (e, st) {
      appLogger.e('saveWeather ✗ $locationKey', error: e, stackTrace: st);
    }
  }

  Future<WeatherData?> getWeather(String locationKey) async {
    try {
      final current =
          await (_db.select(_db.currentWeatherCache)
                ..where((t) => t.locationKey.equals(locationKey)))
              .getSingleOrNull();
      if (current == null) return null;

      final hourly =
          await (_db.select(_db.hourlyWeatherCache)
                ..where((t) => t.locationKey.equals(locationKey))
                ..orderBy([(t) => OrderingTerm.asc(t.time)]))
              .get();
      final daily =
          await (_db.select(_db.dailyWeatherCache)
                ..where((t) => t.locationKey.equals(locationKey))
                ..orderBy([(t) => OrderingTerm.asc(t.date)]))
              .get();

      return WeatherData(
        cityName: current.cityName,
        current: CurrentWeather(
          temperature: current.temperature,
          weatherCode: current.weatherCode,
          windSpeed: current.windSpeed,
          humidity: current.humidity,
          rainChance: current.rainChance,
          isDay: current.isDay,
        ),
        hourly: [
          for (final row in hourly)
            HourlyWeather(
              time: row.time,
              temperature: row.temperature,
              weatherCode: row.weatherCode,
              isDay: row.isDay,
            ),
        ],
        daily: [
          for (final row in daily)
            DailyWeather(
              date: row.date,
              weatherCode: row.weatherCode,
              maxTemp: row.maxTemp,
              minTemp: row.minTemp,
              windSpeed: row.windSpeed,
              humidity: row.humidity,
              rainChance: row.rainChance,
            ),
        ],
        utcOffsetSeconds: current.utcOffsetSeconds,
        fetchedAt: current.fetchedAt,
      );
    } catch (e, st) {
      appLogger.e('getWeather ✗ $locationKey', error: e, stackTrace: st);
      return null;
    }
  }
}
