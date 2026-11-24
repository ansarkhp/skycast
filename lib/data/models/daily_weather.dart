class DailyWeather {
  const DailyWeather({
    required this.date,
    required this.weatherCode,
    required this.maxTemp,
    required this.minTemp,
    required this.windSpeed,
    required this.humidity,
    required this.rainChance,
  });

  final DateTime date;
  final int weatherCode;
  final double maxTemp;
  final double minTemp;
  final int windSpeed;
  final int humidity;
  final int rainChance;

  static List<DailyWeather> listFromApi(Map<String, dynamic> daily) {
    final dates = daily['time'] as List;
    final codes = daily['weather_code'] as List;
    final maxTemps = daily['temperature_2m_max'] as List;
    final minTemps = daily['temperature_2m_min'] as List;
    final winds = daily['wind_speed_10m_max'] as List;
    final humidity = daily['relative_humidity_2m_mean'] as List;
    final rain = daily['precipitation_probability_max'] as List;

    return List.generate(
      dates.length,
      (i) => DailyWeather(
        date: DateTime.parse(dates[i] as String),
        weatherCode: (codes[i] as num).toInt(),
        maxTemp: (maxTemps[i] as num).toDouble(),
        minTemp: (minTemps[i] as num).toDouble(),
        windSpeed: ((winds[i] as num?) ?? 0).round(),
        humidity: ((humidity[i] as num?) ?? 0).round(),
        rainChance: ((rain[i] as num?) ?? 0).round(),
      ),
    );
  }
}
