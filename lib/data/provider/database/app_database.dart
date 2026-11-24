import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'app_database.g.dart';

@DataClassName('CurrentWeatherEntry')
class CurrentWeatherCache extends Table {
  TextColumn get locationKey => text()();
  TextColumn get cityName => text()();
  RealColumn get temperature => real()();
  IntColumn get weatherCode => integer()();
  IntColumn get windSpeed => integer()();
  IntColumn get humidity => integer()();
  IntColumn get rainChance => integer().nullable()();
  BoolColumn get isDay => boolean()();
  IntColumn get utcOffsetSeconds => integer()();
  DateTimeColumn get fetchedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {locationKey};
}

@DataClassName('HourlyWeatherEntry')
class HourlyWeatherCache extends Table {
  TextColumn get locationKey => text()();
  DateTimeColumn get time => dateTime()();
  RealColumn get temperature => real()();
  IntColumn get weatherCode => integer()();
  BoolColumn get isDay => boolean()();

  @override
  Set<Column> get primaryKey => {locationKey, time};
}

@DataClassName('DailyWeatherEntry')
class DailyWeatherCache extends Table {
  TextColumn get locationKey => text()();
  DateTimeColumn get date => dateTime()();
  IntColumn get weatherCode => integer()();
  RealColumn get maxTemp => real()();
  RealColumn get minTemp => real()();
  IntColumn get windSpeed => integer()();
  IntColumn get humidity => integer()();
  IntColumn get rainChance => integer()();

  @override
  Set<Column> get primaryKey => {locationKey, date};
}

@DriftDatabase(
  tables: [CurrentWeatherCache, HourlyWeatherCache, DailyWeatherCache],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor])
    : super(executor ?? driftDatabase(name: 'skycast'));

  @override
  int get schemaVersion => 1;
}
