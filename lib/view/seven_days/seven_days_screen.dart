import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../data/models/daily_weather.dart';
import 'widget/day_forecast_row.dart';
import 'widget/seven_days_app_bar.dart';
import 'widget/tomorrow_card.dart';

@RoutePage()
class SevenDaysScreen extends StatelessWidget {
  const SevenDaysScreen({super.key, required this.days});

  final List<DailyWeather> days;

  @override
  Widget build(BuildContext context) {
    final tomorrow = days.length > 1 ? days[1] : null;
    final nextDays = days.length > 2 ? days.sublist(2) : const <DailyWeather>[];

    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1E),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SevenDaysAppBar(),
              const SizedBox(height: 16),
              if (tomorrow != null) TomorrowCard(day: tomorrow),
              const SizedBox(height: 8),
              Expanded(
                child: ListView.builder(
                  itemCount: nextDays.length,
                  itemBuilder: (context, i) => DayForecastRow(day: nextDays[i]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
