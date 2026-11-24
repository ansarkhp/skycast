import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/daily_weather.dart';
import '../../../data/provider/temperature_unit_provider.dart';
import '../../../utils/helper/temperature.dart';
import '../../../utils/helper/weather_code.dart';

class DayForecastRow extends ConsumerWidget {
  const DayForecastRow({super.key, required this.day});

  final DailyWeather day;

  static const _weekdays = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];

  String _signed(int temp) => temp > 0 ? '+$temp°' : '$temp°';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final unit = ref.watch(temperatureUnitProvider);
    final icon = weatherIcon(day.weatherCode);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Row(
        children: [
          SizedBox(
            width: 48,
            child: Text(
              _weekdays[day.date.weekday - 1],
              style: const TextStyle(color: Colors.white54, fontSize: 16),
            ),
          ),
          Icon(icon.icon, color: icon.color, size: 26),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              weatherDescription(day.weatherCode),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.white70, fontSize: 16),
            ),
          ),
          SizedBox(
            width: 48,
            child: Text(
              _signed(convertTemperature(day.maxTemp, unit)),
              textAlign: TextAlign.right,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            width: 48,
            child: Text(
              _signed(convertTemperature(day.minTemp, unit)),
              textAlign: TextAlign.right,
              style: const TextStyle(color: Colors.white54, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
