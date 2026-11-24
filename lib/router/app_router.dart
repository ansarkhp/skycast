import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../data/models/daily_weather.dart';
import '../view/home/home_screen.dart';
import '../view/location_search/location_search_screen.dart';
import '../view/settings/settings_screen.dart';
import '../view/seven_days/seven_days_screen.dart';

part 'app_router.gr.dart';

final appRouter = AppRouter();

@AutoRouterConfig(argsEquality: false)
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, initial: true),
    AutoRoute(page: SevenDaysRoute.page),
    AutoRoute(page: SettingsRoute.page),
    AutoRoute(page: LocationSearchRoute.page),
  ];
}
