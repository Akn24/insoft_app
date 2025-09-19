import 'package:flutter/material.dart';
import '../constants/theme.dart';

// Glassmorphism header decoration
BoxDecoration kHeaderDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(100),
);

// Glassmorphism card decoration (for reuse)
BoxDecoration kGlassCardDecoration = BoxDecoration(
  color: Colors.white.withOpacity(0.35),
  borderRadius: BorderRadius.circular(24),
  boxShadow: [
    BoxShadow(
      color: AppTheme.primaryBlue.withOpacity(0.10),
      blurRadius: 24,
      offset: const Offset(0, 8),
    ),
  ],
  border: Border.all(
    color: Colors.white.withOpacity(0.18),
    width: 1.5,
  ),
);

// Soft drop shadow for buttons
BoxShadow kButtonShadow = BoxShadow(
  color: AppTheme.coral.withOpacity(0.18),
  blurRadius: 12,
  offset: const Offset(0, 4),
);
