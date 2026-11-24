import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/provider/app_version_provider.dart';
import 'widget/settings_app_bar.dart';
import 'widget/temperature_unit_card.dart';

@RoutePage()
class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final version = ref.watch(appVersionProvider).value;

    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1E),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SettingsAppBar(),
              const SizedBox(height: 16),
              const TemperatureUnitCard(),
              const Spacer(),
              Text(
                version == null ? '' : 'Version $version',
                style: const TextStyle(color: Colors.white38, fontSize: 13),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
