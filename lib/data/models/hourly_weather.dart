class HourlyWeather {
  const HourlyWeather({
    required this.time,
    required this.temperature,
    required this.weatherCode,
    required this.isDay,
  });

  final DateTime time;
  final double temperature;
  final int weatherCode;
  final bool isDay;

  static List<HourlyWeather> listFromApi(Map<String, dynamic> hourly) {
    final times = hourly['time'] as List;
    final temps = hourly['temperature_2m'] as List;
    final codes = hourly['weather_code'] as List;
    final isDay = hourly['is_day'] as List;

    return List.generate(
      times.length,
      (i) => HourlyWeather(
        time: DateTime.parse(times[i] as String),
        temperature: (temps[i] as num).toDouble(),
        weatherCode: (codes[i] as num).toInt(),
        isDay: isDay[i] == 1,
      ),
    );
  }
}
