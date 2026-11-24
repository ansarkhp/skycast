import 'package:flutter/material.dart';
import '../../../utils/helper/weather_code.dart';

class CurrentWeatherHero extends StatelessWidget {
  const CurrentWeatherHero({
    super.key,
    required this.temperature,
    required this.condition,
    this.weatherCode,
    this.isDay = true,
  });

  final String temperature;
  final String condition;
  final int? weatherCode;
  final bool isDay;

  @override
  Widget build(BuildContext context) {
    final icon = weatherCode == null
        ? null
        : weatherIcon(weatherCode!, isDay: isDay);

    return Column(
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: icon == null
                ? null
                : [
                    BoxShadow(
                      color: icon.color.withValues(alpha: 0.25),
                      blurRadius: 60,
                      spreadRadius: 10,
                    ),
                  ],
          ),
          child: icon == null
              ? null
              : Icon(icon.icon, size: 110, color: icon.color),
        ),
        const SizedBox(height: 8),
        Text(
          temperature,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 96,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          condition,
          style: const TextStyle(color: Colors.white70, fontSize: 20),
        ),
      ],
    );
  }
}
