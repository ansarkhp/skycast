// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children, argsEquality: false);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeScreen();
    },
  );
}

/// generated route for
/// [LocationSearchScreen]
class LocationSearchRoute extends PageRouteInfo<void> {
  const LocationSearchRoute({List<PageRouteInfo>? children})
    : super(
        LocationSearchRoute.name,
        initialChildren: children,
        argsEquality: false,
      );

  static const String name = 'LocationSearchRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LocationSearchScreen();
    },
  );
}

/// generated route for
/// [SettingsScreen]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
    : super(SettingsRoute.name, initialChildren: children, argsEquality: false);

  static const String name = 'SettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SettingsScreen();
    },
  );
}

/// generated route for
/// [SevenDaysScreen]
class SevenDaysRoute extends PageRouteInfo<SevenDaysRouteArgs> {
  SevenDaysRoute({
    Key? key,
    required List<DailyWeather> days,
    List<PageRouteInfo>? children,
  }) : super(
         SevenDaysRoute.name,
         args: SevenDaysRouteArgs(key: key, days: days),
         initialChildren: children,
         argsEquality: false,
       );

  static const String name = 'SevenDaysRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SevenDaysRouteArgs>();
      return SevenDaysScreen(key: args.key, days: args.days);
    },
  );
}

class SevenDaysRouteArgs {
  const SevenDaysRouteArgs({this.key, required this.days});

  final Key? key;

  final List<DailyWeather> days;

  @override
  String toString() {
    return 'SevenDaysRouteArgs{key: $key, days: $days}';
  }
}
