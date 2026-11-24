import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app_database.dart';
import 'weather_local_ds.dart';

final appDatabaseProvider = Provider<AppDatabase>((ref) {
  final db = AppDatabase();
  ref.onDispose(db.close);
  return db;
});

final weatherLocalDsProvider = Provider<WeatherLocalDs>(
  (ref) => WeatherLocalDs(ref.watch(appDatabaseProvider)),
);
