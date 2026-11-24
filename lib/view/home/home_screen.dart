import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/datasources/location_service.dart';
import '../../data/datasources/weather_api_service.dart';
import '../../data/models/daily_weather.dart';
import '../../data/models/hourly_weather.dart';
import '../../data/models/weather_data.dart';
import '../../data/provider/database/database_provider.dart';
import '../../data/provider/selected_location_provider.dart';
import '../../data/provider/temperature_unit_provider.dart';
import '../../router/app_router.dart';
import '../../utils/helper/temperature.dart';
import '../../utils/helper/weather_code.dart';
import 'widget/home_app_bar.dart';
import 'widget/hourly_forecast_section.dart';
import 'widget/weather_stats_card.dart';
import 'widget/current_weather_hero.dart';

const _fallbackLat = 9.9312;
const _fallbackLon = 76.2673;
const _fallbackCity = 'Kochi';
const _currentLocationKey = 'current';

@RoutePage()
class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  String _cityName = '--';
  WeatherData? _weather;
  bool _failed = false;

  @override
  void initState() {
    super.initState();
    _loadWeather();
  }

  Future<void> _loadWeather() async {
    final selected = ref.read(selectedLocationProvider);
    final localDs = ref.read(weatherLocalDsProvider);
    final cacheKey = selected?.cacheKey ?? _currentLocationKey;

    final cached = await localDs.getWeather(cacheKey);
    if (!mounted) return;
    setState(() {
      _weather = cached;
      _failed = false;
      _cityName = cached?.cityName ?? selected?.name ?? '--';
    });

    double lat = _fallbackLat;
    double lon = _fallbackLon;
    String city = _fallbackCity;

    if (selected != null) {
      lat = selected.latitude;
      lon = selected.longitude;
      city = selected.name;
    } else {
      try {
        final position = await determinePosition();
        lat = position.latitude;
        lon = position.longitude;

        try {
          city = await getPlaceName(lat, lon) ?? 'Current location';
        } catch (e) {
          city = 'Current location';
        }
      } catch (e) {
      }
    }

    if (!mounted) return;
    setState(() => _cityName = city);

    final WeatherData weather;
    try {
      weather = WeatherData.fromApi(await fetchWeather(lat, lon), cityName: city);
    } catch (e) {
      if (!mounted) return;
      setState(() => _failed = true);
      return;
    }

    if (mounted) setState(() => _weather = weather);
    await localDs.saveWeather(cacheKey, weather);
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(selectedLocationProvider, (_, _) => _loadWeather());
    final unit = ref.watch(temperatureUnitProvider);
    final current = _weather?.current;
    final hours =
        _weather?.upcomingHours.take(4).toList() ?? const <HourlyWeather>[];
    final days = _weather?.upcomingDays ?? const <DailyWeather>[];
    final rain = current?.rainChance;

    final temperature = current == null
        ? '--°'
        : '${convertTemperature(current.temperature, unit)}°';
    final condition = current != null
        ? weatherDescription(current.weatherCode)
        : _failed
        ? 'Unable to load weather'
        : 'Loading...';

    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1E),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              HomeAppBar(
                cityName: _cityName,
                onCityTap: () => appRouter.push(const LocationSearchRoute()),
              ),
              const SizedBox(height: 64),
              CurrentWeatherHero(
                temperature: temperature,
                condition: condition,
                weatherCode: current?.weatherCode,
                isDay: current?.isDay ?? true,
              ),
              const SizedBox(height: 24),
              WeatherStatsCard(
                wind: current == null ? '--' : '${current.windSpeed} km/h',
                humidity: current == null ? '--' : '${current.humidity}%',
                rain: rain == null ? '--' : '$rain%',
              ),
              const Spacer(),
              HourlyForecastSection(
                hours: hours,
                onSevenDaysTap: days.length < 2
                    ? null
                    : () => appRouter.push(SevenDaysRoute(days: days)),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
