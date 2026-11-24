import 'package:flutter/material.dart';

class CityResultTile extends StatelessWidget {
  const CityResultTile({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.subtitle = '',
    this.selected = false,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      leading: Icon(icon, color: Colors.white70),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: subtitle.isEmpty
          ? null
          : Text(
              subtitle,
              style: const TextStyle(color: Colors.white54, fontSize: 13),
            ),
      trailing: selected
          ? const Icon(Icons.check, color: Color(0xFF5AB2FF))
          : null,
    );
  }
}
