class CurrentWeather {
  const CurrentWeather({
    required this.temperature,
    required this.weatherCode,
    required this.windSpeed,
    required this.humidity,
    required this.rainChance,
    required this.isDay,
  });

  final double temperature;
  final int weatherCode;
  final int windSpeed;
  final int humidity;
  final int? rainChance;
  final bool isDay;

  factory CurrentWeather.fromApi(Map<String, dynamic> current) =>
      CurrentWeather(
        temperature: (current['temperature_2m'] as num).toDouble(),
        weatherCode: (current['weather_code'] as num).toInt(),
        windSpeed: (current['wind_speed_10m'] as num).round(),
        humidity: (current['relative_humidity_2m'] as num).round(),
        rainChance: (current['precipitation_probability'] as num?)?.round(),
        isDay: current['is_day'] == 1,
      );
}
