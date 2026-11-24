import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/hourly_weather.dart';
import '../../../data/provider/temperature_unit_provider.dart';
import '../../../utils/helper/temperature.dart';
import '../../../utils/helper/weather_code.dart';

class HourlyForecastSection extends StatelessWidget {
  const HourlyForecastSection({
    super.key,
    required this.hours,
    this.onSevenDaysTap,
  });

  final List<HourlyWeather> hours;
  final VoidCallback? onSevenDaysTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Today',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            GestureDetector(
              onTap: onSevenDaysTap,
              child: const Row(
                children: [
                  Text(
                    '7 days',
                    style: TextStyle(color: Colors.white54, fontSize: 13),
                  ),
                  Icon(Icons.chevron_right, color: Colors.white54, size: 18),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 112,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              for (var i = 0; i < hours.length; i++) ...[
                if (i > 0) const SizedBox(width: 8),
                Expanded(child: _HourCard(hour: hours[i], isNow: i == 0)),
              ],
            ],
          ),
        ),
      ],
    );
  }
}

class _HourCard extends ConsumerWidget {
  const _HourCard({required this.hour, required this.isNow});

  final HourlyWeather hour;
  final bool isNow;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final unit = ref.watch(temperatureUnitProvider);
    final icon = weatherIcon(hour.weatherCode, isDay: hour.isDay);
    final hour12 = hour.time.hour % 12 == 0 ? 12 : hour.time.hour % 12;
    final label = isNow ? 'Now' : '${hour12.toString().padLeft(2, '0')}:00';

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: isNow ? null : const Color(0xFF2C2C2E),
        gradient: isNow
            ? const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF5AB2FF), Color(0xFF2D6BF5)],
              )
            : null,
        borderRadius: BorderRadius.circular(20),
        border: isNow ? null : Border.all(color: Colors.white10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '${convertTemperature(hour.temperature, unit)}°',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Icon(icon.icon, color: icon.color, size: 26),
          Text(
            label,
            style: TextStyle(
              color: isNow ? Colors.white : Colors.white54,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
