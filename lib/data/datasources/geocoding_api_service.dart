import 'package:dio/dio.dart';

import '../../utils/helper/app_logger.dart';
import '../models/city_location.dart';

const _baseUrl = 'https://geocoding-api.open-meteo.com/v1/search';

final _dio = Dio(
  BaseOptions(
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
  ),
);

Future<List<CityLocation>> searchCities(String query) async {
  try {
    final response = await _dio.get<Map<String, dynamic>>(
      _baseUrl,
      queryParameters: {
        'name': query,
        'count': 10,
        'language': 'en',
        'format': 'json',
      },
    );
    final results = (response.data?['results'] as List?) ?? const [];

    appLogger.i('searchCities ✓ "$query" → ${results.length} results');
    return results
        .map((item) => CityLocation.fromJson(item as Map<String, dynamic>))
        .toList();
  } on DioException catch (e, st) {
    appLogger.e('searchCities ✗ "$query"', error: e, stackTrace: st);
    rethrow;
  }
}
