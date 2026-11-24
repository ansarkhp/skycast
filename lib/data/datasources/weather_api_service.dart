import 'dart:convert';

import 'package:dio/dio.dart';

import '../../utils/helper/app_logger.dart';

const _baseUrl = 'https://api.open-meteo.com/v1/forecast';

final _dio = Dio(
  BaseOptions(
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
  ),
);


Future<Map<String, dynamic>> fetchWeather(double lat, double lon) async {
  try {
    final response = await _dio.get<Map<String, dynamic>>(
      _baseUrl,
      queryParameters: {
        'latitude': lat,
        'longitude': lon,
        'current':
            'temperature_2m,relative_humidity_2m,apparent_temperature,weather_code,wind_speed_10m,precipitation_probability,is_day',
        'hourly': 'temperature_2m,weather_code,is_day',
        'forecast_hours': 24,
        'daily':
            'weather_code,temperature_2m_max,temperature_2m_min,wind_speed_10m_max,precipitation_probability_max,relative_humidity_2m_mean',
        'forecast_days': 9,
        'timezone': 'auto',
      },
    );
    final data = response.data!;

    appLogger.i(
      'fetchWeather ✓ ${response.statusCode} ${response.realUri}\n'
      '${const JsonEncoder.withIndent('  ').convert(data)}',
    );
    return data;
  } on DioException catch (e, st) {
    appLogger.e(
      'fetchWeather ✗ lat: $lat, lon: $lon',
      error: e,
      stackTrace: st,
    );
    rethrow;
  }
}
