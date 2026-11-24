import 'package:flutter/material.dart';
import '../../../router/app_router.dart';

class SettingsAppBar extends StatelessWidget {
  const SettingsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () => appRouter.maybePop(),
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
        ),
        const Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 48),
      ],
    );
  }
}
