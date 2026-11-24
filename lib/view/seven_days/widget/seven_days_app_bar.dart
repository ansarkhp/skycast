import 'package:flutter/material.dart';
import '../../../router/app_router.dart';

class SevenDaysAppBar extends StatelessWidget {
  const SevenDaysAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () => appRouter.maybePop(),
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
        ),
        const Row(
          children: [
            Icon(Icons.calendar_today, color: Colors.white, size: 20),
            SizedBox(width: 8),
            Text(
              '7 days',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: () => appRouter.push(const SettingsRoute()),
          icon: const Icon(Icons.more_vert, color: Colors.white),
        ),
      ],
    );
  }
}
