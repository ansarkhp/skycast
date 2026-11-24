import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/datasources/geocoding_api_service.dart';
import '../../data/models/city_location.dart';
import '../../data/provider/selected_location_provider.dart';
import '../../router/app_router.dart';
import 'widget/city_result_tile.dart';
import 'widget/location_search_bar.dart';

@RoutePage()
class LocationSearchScreen extends ConsumerStatefulWidget {
  const LocationSearchScreen({super.key});

  @override
  ConsumerState<LocationSearchScreen> createState() =>
      _LocationSearchScreenState();
}

class _LocationSearchScreenState extends ConsumerState<LocationSearchScreen> {
  final _controller = TextEditingController();
  Timer? _debounce;
  String _query = '';
  List<CityLocation> _results = const [];
  bool _loading = false;
  bool _failed = false;

  @override
  void dispose() {
    _debounce?.cancel();
    _controller.dispose();
    super.dispose();
  }

  void _onChanged(String value) {
    _debounce?.cancel();
    final query = value.trim();
    if (query.length < 2) {
      setState(() {
        _query = query;
        _results = const [];
        _loading = false;
        _failed = false;
      });
      return;
    }
    setState(() {
      _query = query;
      _loading = true;
      _failed = false;
    });
    _debounce = Timer(
      const Duration(milliseconds: 400),
      () => _search(query),
    );
  }

  Future<void> _search(String query) async {
    try {
      final results = await searchCities(query);
      if (!mounted || query != _query) return;
      setState(() {
        _results = results;
        _loading = false;
      });
    } catch (_) {
      if (!mounted || query != _query) return;
      setState(() {
        _results = const [];
        _loading = false;
        _failed = true;
      });
    }
  }

  void _clear() {
    _controller.clear();
    _onChanged('');
  }

  void _selectCity(CityLocation city) {
    ref.read(selectedLocationProvider.notifier).select(city);
    appRouter.maybePop();
  }

  void _useCurrentLocation() {
    ref.read(selectedLocationProvider.notifier).useCurrentLocation();
    appRouter.maybePop();
  }

  @override
  Widget build(BuildContext context) {
    final selected = ref.watch(selectedLocationProvider);

    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1E),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              LocationSearchBar(
                controller: _controller,
                onChanged: _onChanged,
                onClear: _clear,
              ),
              const SizedBox(height: 16),
              CityResultTile(
                icon: Icons.my_location,
                title: 'Use current location',
                selected: selected == null,
                onTap: _useCurrentLocation,
              ),
              const Divider(color: Colors.white10, height: 16),
              Expanded(child: _buildResults(selected)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildResults(CityLocation? selected) {
    if (_loading) {
      return _centered(
        const CircularProgressIndicator(color: Colors.white54),
      );
    }
    if (_failed) {
      return _centered(_message("Couldn't search. Check your connection."));
    }
    if (_query.length >= 2 && _results.isEmpty) {
      return _centered(_message('No cities found for "$_query"'));
    }
    return ListView.builder(
      itemCount: _results.length,
      itemBuilder: (_, i) {
        final city = _results[i];
        return CityResultTile(
          icon: Icons.location_city,
          title: city.name,
          subtitle: city.subtitle,
          selected: city.isSameAs(selected),
          onTap: () => _selectCity(city),
        );
      },
    );
  }

  Widget _centered(Widget child) => Padding(
    padding: const EdgeInsets.only(top: 32),
    child: Align(alignment: Alignment.topCenter, child: child),
  );

  Widget _message(String text) => Text(
    text,
    textAlign: TextAlign.center,
    style: const TextStyle(color: Colors.white54, fontSize: 14),
  );
}
