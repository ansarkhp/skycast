import 'package:flutter/material.dart';
import '../../../router/app_router.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key, required this.cityName, this.onCityTap});

  final String cityName;
  final VoidCallback? onCityTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(width: 48),
        Flexible(
          child: InkWell(
            onTap: onCityTap,
            borderRadius: BorderRadius.circular(12),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.location_on, color: Colors.white, size: 20),
                  const SizedBox(width: 4),
                  Flexible(
                    child: Text(
                      cityName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white70,
                    size: 22,
                  ),
                ],
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () => appRouter.push(const SettingsRoute()),
          icon: const Icon(Icons.more_vert, color: Colors.white),
        ),
      ],
    );
  }
}
