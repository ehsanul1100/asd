import 'dart:ui';

class AgeGroup {
  final String id;
  final String name;
  final String ageRange;
  final String description;
  final String icon; // Emoji or icon data
  final Color color; // Converted from Tailwind class

  AgeGroup({
    required this.id,
    required this.name,
    required this.ageRange,
    required this.description,
    required this.icon,
    required this.color,
  });
}
