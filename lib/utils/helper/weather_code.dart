import 'package:flutter/material.dart';

({IconData icon, Color color}) weatherIcon(int code, {bool isDay = true}) {
  switch (code) {
    case 0:
    case 1:
      return isDay
          ? (icon: Icons.wb_sunny, color: Colors.amber)
          : (icon: Icons.nightlight_round, color: Colors.white70);
    case 2:
      return isDay
          ? (icon: Icons.wb_cloudy, color: Colors.white)
          : (icon: Icons.nights_stay, color: Colors.white70);
    case 3:
      return (icon: Icons.cloud, color: Colors.white70);
    case 45:
    case 48:
      return (icon: Icons.foggy, color: Colors.white70);
    case 51:
    case 53:
    case 55:
    case 56:
    case 57:
      return (icon: Icons.grain, color: Colors.lightBlueAccent);
    case 61:
    case 63:
    case 65:
    case 66:
    case 67:
    case 80:
    case 81:
    case 82:
      return (icon: Icons.umbrella, color: Colors.lightBlueAccent);
    case 71:
    case 73:
    case 75:
    case 77:
    case 85:
    case 86:
      return (icon: Icons.ac_unit, color: Colors.white);
    case 95:
    case 96:
    case 99:
      return (icon: Icons.thunderstorm, color: Colors.yellow);
    default:
      return (icon: Icons.cloud, color: Colors.white70);
  }
}

String weatherDescription(int code) {
  switch (code) {
    case 0:
      return 'Clear sky';
    case 1:
      return 'Mainly clear';
    case 2:
      return 'Partly cloudy';
    case 3:
      return 'Overcast';
    case 45:
    case 48:
      return 'Fog';
    case 51:
    case 53:
    case 55:
      return 'Drizzle';
    case 56:
    case 57:
      return 'Freezing drizzle';
    case 61:
      return 'Light rain';
    case 63:
      return 'Rain';
    case 65:
      return 'Heavy rain';
    case 66:
    case 67:
      return 'Freezing rain';
    case 71:
    case 73:
    case 75:
    case 77:
      return 'Snow';
    case 80:
    case 81:
    case 82:
      return 'Rain showers';
    case 85:
    case 86:
      return 'Snow showers';
    case 95:
      return 'Thunderstorm';
    case 96:
    case 99:
      return 'Thunderstorm with hail';
    default:
      return 'Unknown';
  }
}
