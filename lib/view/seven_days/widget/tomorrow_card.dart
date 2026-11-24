import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/daily_weather.dart';
import '../../../data/provider/temperature_unit_provider.dart';
import '../../../utils/helper/temperature.dart';
import '../../../utils/helper/weather_code.dart';
import '../../home/widget/weather_stats_card.dart';

class TomorrowCard extends ConsumerWidget {
  const TomorrowCard({super.key, required this.day});

  final DailyWeather day;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final unit = ref.watch(temperatureUnitProvider);
    final icon = weatherIcon(day.weatherCode);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF3A3A3C), Color(0xFF242426)],
        ),
        borderRadius: BorderRadius.circular(28),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: icon.color.withValues(alpha: 0.25),
                      blurRadius: 40,
                      spreadRadius: 4,
                    ),
                  ],
                ),
                child: Icon(icon.icon, size: 90, color: icon.color),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Tomorrow',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '${convertTemperature(day.maxTemp, unit)}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 64,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: '/${convertTemperature(day.minTemp, unit)}°',
                            style: const TextStyle(
                              color: Colors.white54,
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      weatherDescription(day.weatherCode),
                      style: const TextStyle(
                        color: Colors.white54,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          WeatherStatsCard(
            wind: '${day.windSpeed} km/h',
            humidity: '${day.humidity}%',
            rain: '${day.rainChance}%',
          ),
        ],
      ),
    );
  }
}
