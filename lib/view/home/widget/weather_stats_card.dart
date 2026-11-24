import 'package:flutter/material.dart';

class WeatherStatsCard extends StatelessWidget {
  const WeatherStatsCard({
    super.key,
    required this.wind,
    required this.humidity,
    required this.rain,
  });

  final String wind;
  final String humidity;
  final String rain;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF2C2C2E),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          _StatItem(
            icon: Icons.air,
            iconColor: Colors.white70,
            value: wind,
            label: 'Wind',
          ),
          const _Divider(),
          _StatItem(
            icon: Icons.water_drop,
            iconColor: Colors.lightBlueAccent,
            value: humidity,
            label: 'Humidity',
          ),
          const _Divider(),
          _StatItem(
            icon: Icons.umbrella,
            iconColor: Colors.white70,
            value: rain,
            label: 'Rain',
          ),
        ],
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  const _StatItem({
    required this.icon,
    required this.iconColor,
    required this.value,
    required this.label,
  });

  final IconData icon;
  final Color iconColor;
  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Icon(icon, color: iconColor, size: 20),
          const SizedBox(height: 6),
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            label,
            style: const TextStyle(color: Colors.white54, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

class _Divider extends StatelessWidget {
  const _Divider();

  @override
  Widget build(BuildContext context) {
    return Container(width: 1, height: 40, color: Colors.white12);
  }
}
