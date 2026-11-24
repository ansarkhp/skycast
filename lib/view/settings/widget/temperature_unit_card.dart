import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/provider/temperature_unit_provider.dart';
import '../../../utils/helper/temperature.dart';

class TemperatureUnitCard extends ConsumerWidget {
  const TemperatureUnitCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final unit = ref.watch(temperatureUnitProvider);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF2C2C2E),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          const Icon(Icons.thermostat, color: Colors.white70),
          const SizedBox(width: 12),
          const Expanded(
            child: Text(
              'Temperature unit',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          SegmentedButton<TemperatureUnit>(
            segments: const [
              ButtonSegment(value: TemperatureUnit.celsius, label: Text('°C')),
              ButtonSegment(
                value: TemperatureUnit.fahrenheit,
                label: Text('°F'),
              ),
            ],
            selected: {unit},
            showSelectedIcon: false,
            onSelectionChanged: (selection) => ref
                .read(temperatureUnitProvider.notifier)
                .setUnit(selection.first),
            style: SegmentedButton.styleFrom(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.white70,
              selectedBackgroundColor: const Color(0xFF2D6BF5),
              selectedForegroundColor: Colors.white,
              side: const BorderSide(color: Colors.white24),
            ),
          ),
        ],
      ),
    );
  }
}
