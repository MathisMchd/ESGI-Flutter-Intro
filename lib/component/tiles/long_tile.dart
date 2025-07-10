import 'package:flutter/material.dart';

class LongTile extends StatelessWidget {
  final String title;
  final IconData? icon;
  final VoidCallback? onTap;
  final Widget? trailing;

  const LongTile({
    super.key,
    required this.title,
    this.icon,
    this.onTap,
    this.trailing = const Icon(
        Icons.arrow_forward, size: 16.0, color: Colors.grey),
  });

  @override
  Widget build(BuildContext context) {
    return InkWell( // Tuile avecc animation
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Row(
          children: [
            if (icon != null) ...[
              Icon(icon, size: 24.0, color: Colors.black87),
              SizedBox(width: 16.0),
            ],
            Expanded(
              child: Text(
                title,
                style: const TextStyle(color: Colors.black),
              ),
            ),
            if (trailing != null)
              trailing!,
          ],
        ),
      ),
    );
  }
}
