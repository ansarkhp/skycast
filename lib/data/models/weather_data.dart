import 'current_weather.dart';
import 'daily_weather.dart';
import 'hourly_weather.dart';

class WeatherData {
  const WeatherData({
    required this.cityName,
    required this.current,
    required this.hourly,
    required this.daily,
    required this.utcOffsetSeconds,
    required this.fetchedAt,
  });

  final String cityName;
  final CurrentWeather current;
  final List<HourlyWeather> hourly;
  final List<DailyWeather> daily;
  final int utcOffsetSeconds;
  final DateTime fetchedAt;

  factory WeatherData.fromApi(
    Map<String, dynamic> data, {
    required String cityName,
  }) => WeatherData(
    cityName: cityName,
    current: CurrentWeather.fromApi(data['current'] as Map<String, dynamic>),
    hourly: HourlyWeather.listFromApi(data['hourly'] as Map<String, dynamic>),
    daily: DailyWeather.listFromApi(data['daily'] as Map<String, dynamic>),
    utcOffsetSeconds: (data['utc_offset_seconds'] as num?)?.toInt() ?? 0,
    fetchedAt: DateTime.now(),
  );

  DateTime get _locationNow =>
      DateTime.now().toUtc().add(Duration(seconds: utcOffsetSeconds));

  List<HourlyWeather> get upcomingHours {
    final now = _locationNow;
    final hourAgo = DateTime(
      now.year,
      now.month,
      now.day,
      now.hour - 1,
      now.minute,
    );
    return hourly.where((h) => h.time.isAfter(hourAgo)).toList();
  }

  List<DailyWeather> get upcomingDays {
    final now = _locationNow;
    final today = DateTime(now.year, now.month, now.day);
    return daily.where((d) => !d.date.isBefore(today)).toList();
  }
}
