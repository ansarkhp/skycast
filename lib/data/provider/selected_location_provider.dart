import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/city_location.dart';
import 'sharedPreferences/pref_const.dart';
import 'sharedPreferences/shared_prefs_provider.dart';

final selectedLocationProvider =
    NotifierProvider<SelectedLocationNotifier, CityLocation?>(
      SelectedLocationNotifier.new,
    );

class SelectedLocationNotifier extends Notifier<CityLocation?> {
  @override
  CityLocation? build() {
    final saved = ref
        .watch(sharedPrefsProvider)
        .getString(PrefConst.selectedLocation);
    if (saved == null) return null;
    try {
      return CityLocation.fromJson(jsonDecode(saved) as Map<String, dynamic>);
    } catch (_) {
      return null;
    }
  }

  Future<void> select(CityLocation city) async {
    state = city;
    await ref
        .read(sharedPrefsProvider)
        .setString(PrefConst.selectedLocation, jsonEncode(city.toJson()));
  }

  Future<void> useCurrentLocation() async {
    state = null;
    await ref.read(sharedPrefsProvider).remove(PrefConst.selectedLocation);
  }
}
