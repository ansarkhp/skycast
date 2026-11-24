import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../utils/helper/temperature.dart';
import 'sharedPreferences/pref_const.dart';
import 'sharedPreferences/shared_prefs_provider.dart';

final temperatureUnitProvider =
    NotifierProvider<TemperatureUnitNotifier, TemperatureUnit>(
      TemperatureUnitNotifier.new,
    );

class TemperatureUnitNotifier extends Notifier<TemperatureUnit> {
  @override
  TemperatureUnit build() {
    final saved = ref
        .watch(sharedPrefsProvider)
        .getString(PrefConst.temperatureUnit);
    return TemperatureUnit.values.asNameMap()[saved] ??
        TemperatureUnit.celsius;
  }

  Future<void> setUnit(TemperatureUnit unit) async {
    state = unit;
    await ref
        .read(sharedPrefsProvider)
        .setString(PrefConst.temperatureUnit, unit.name);
  }
}
