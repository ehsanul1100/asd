import 'dart:ui';

import 'package:flex_color_scheme/flex_color_scheme.dart';

Color applyOpacity(Color color, double opacity) {
  final alpha = (opacity * 255).round().clamp(0, 255);
  return Color.fromARGB(alpha, color.red8bit, color.green8bit, color.blue8bit);
}
