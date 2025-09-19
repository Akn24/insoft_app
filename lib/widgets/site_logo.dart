import 'package:flutter/material.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.onTap});
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Text(
        "Insoft Solutions",
        style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.w900,
          color: Color(0xFF004AAD),
          letterSpacing: 1.2,
          shadows: [
            Shadow(
              color: Color(0x33004AAD),
              blurRadius: 8,
              offset: Offset(0, 2),
            ),
          ],
        ),
      ),
    );
  }
}
