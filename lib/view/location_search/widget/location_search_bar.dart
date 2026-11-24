import 'package:flutter/material.dart';
import '../../../router/app_router.dart';

class LocationSearchBar extends StatelessWidget {
  const LocationSearchBar({
    super.key,
    required this.controller,
    required this.onChanged,
    required this.onClear,
  });

  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  final VoidCallback onClear;

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(color: Colors.white10),
    );

    return Row(
      children: [
        IconButton(
          onPressed: () => appRouter.maybePop(),
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
        ),
        Expanded(
          child: TextField(
            controller: controller,
            onChanged: onChanged,
            autofocus: true,
            textInputAction: TextInputAction.search,
            cursorColor: Colors.white,
            style: const TextStyle(color: Colors.white, fontSize: 16),
            decoration: InputDecoration(
              hintText: 'Search city',
              hintStyle: const TextStyle(color: Colors.white38),
              prefixIcon: const Icon(Icons.search, color: Colors.white54),
              suffixIcon: ValueListenableBuilder<TextEditingValue>(
                valueListenable: controller,
                builder: (_, value, _) => value.text.isEmpty
                    ? const SizedBox.shrink()
                    : IconButton(
                        onPressed: onClear,
                        icon: const Icon(
                          Icons.close,
                          color: Colors.white54,
                          size: 20,
                        ),
                      ),
              ),
              filled: true,
              fillColor: const Color(0xFF2C2C2E),
              contentPadding: const EdgeInsets.symmetric(vertical: 14),
              border: border,
              enabledBorder: border,
              focusedBorder: border.copyWith(
                borderSide: const BorderSide(color: Colors.white24),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
