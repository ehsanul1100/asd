import 'package:asd/core/utils/opacity.dart';
import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:google_fonts/google_fonts.dart';

// Defining custom colors based on the CSS variables
const Color medicalBlue = Color.fromRGBO(33, 150, 243, 1); // hsl(207, 90%, 54%)
const Color lightBlue = Color.fromRGBO(41, 182, 246, 1); // hsl(212, 92%, 60%)
const Color successGreen = Color.fromRGBO(52, 199, 89, 1); // hsl(158, 64%, 52%)
const Color medicalBgLight = Color.fromRGBO(
  241,
  245,
  249,
  1,
); // hsl(210, 40%, 97%)
const Color medicalBgDark = Color.fromRGBO(
  28,
  30,
  37,
  1,
); // hsl(240, 3.7%, 15.9%)

// Light theme configuration using FlexColorScheme
final FlexColorScheme lightScheme = FlexColorScheme.light(
  primary: medicalBlue,
  primaryContainer: applyOpacity(medicalBlue, 0.1),
  secondary: const Color.fromRGBO(247, 247, 242, 1), // hsl(60, 4.8%, 95.9%)
  secondaryContainer: const Color.fromRGBO(247, 247, 242, 1),
  tertiary: lightBlue,
  error: const Color.fromRGBO(234, 67, 53, 1), // hsl(0, 84.2%, 60.2%)
  surface: const Color.fromRGBO(255, 255, 255, 1), // hsl(0, 0%, 100%)
  scaffoldBackground: medicalBgLight,
  appBarBackground: const Color.fromRGBO(255, 255, 255, 1),
  onPrimary: const Color.fromRGBO(250, 253, 255, 1), // hsl(211, 100%, 99%)
  onSecondary: const Color.fromRGBO(31, 29, 25, 1), // hsl(24, 9.8%, 10%)
  onSurface: const Color.fromRGBO(10, 7, 4, 1), // hsl(20, 14.3%, 4.1%)
  onError: const Color.fromRGBO(251, 251, 250, 1), // hsl(60, 9.1%, 97.8%)
  surfaceTint: medicalBlue,
  useMaterial3: true,
);

// Dark theme configuration using FlexColorScheme
final FlexColorScheme darkScheme = FlexColorScheme.dark(
  primary: medicalBlue,
  primaryContainer: applyOpacity(medicalBlue, 0.1),
  secondary: const Color.fromRGBO(28, 30, 37, 1), // hsl(240, 3.7%, 15.9%)
  secondaryContainer: const Color.fromRGBO(28, 30, 37, 1),
  tertiary: lightBlue,
  error: const Color.fromRGBO(176, 0, 32, 1), // hsl(0, 62.8%, 30.6%)
  surface: const Color.fromRGBO(18, 18, 23, 1), // hsl(240, 10%, 3.9%)
  scaffoldBackground: medicalBgDark,
  appBarBackground: const Color.fromRGBO(18, 18, 23, 1),
  onPrimary: const Color.fromRGBO(250, 253, 255, 1), // hsl(211, 100%, 99%)
  onSecondary: const Color.fromRGBO(250, 250, 250, 1), // hsl(0, 0%, 98%)
  onSurface: const Color.fromRGBO(250, 250, 250, 1), // hsl(0, 0%, 98%)
  onError: const Color.fromRGBO(250, 250, 250, 1), // hsl(0, 0%, 98%)
  surfaceTint: medicalBlue,
  useMaterial3: true,
);

// ThemeData for light theme
ThemeData lightTheme = lightScheme.toTheme.copyWith(
  textTheme: TextTheme(
    displayLarge: GoogleFonts.inter(fontWeight: FontWeight.w700),
    displayMedium: GoogleFonts.inter(fontWeight: FontWeight.w600),
    displaySmall: GoogleFonts.inter(fontWeight: FontWeight.w500),
    headlineLarge: GoogleFonts.inter(fontWeight: FontWeight.w700),
    headlineMedium: GoogleFonts.inter(fontWeight: FontWeight.w600),
    headlineSmall: GoogleFonts.inter(fontWeight: FontWeight.w500),
    titleLarge: GoogleFonts.inter(fontWeight: FontWeight.w600),
    titleMedium: GoogleFonts.inter(fontWeight: FontWeight.w500),
    titleSmall: GoogleFonts.inter(fontWeight: FontWeight.w400),
    bodyLarge: GoogleFonts.inter(fontWeight: FontWeight.normal),
    bodyMedium: GoogleFonts.inter(fontWeight: FontWeight.normal),
    bodySmall: GoogleFonts.inter(fontWeight: FontWeight.normal),
    labelLarge: GoogleFonts.inter(fontWeight: FontWeight.w500),
    labelMedium: GoogleFonts.inter(fontWeight: FontWeight.w400),
    labelSmall: GoogleFonts.inter(fontWeight: FontWeight.w400),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: const Color.fromRGBO(232, 229, 227, 1),
      ), // hsl(20, 5.9%, 90%)
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: const Color.fromRGBO(232, 229, 227, 1)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: medicalBlue, width: 2),
    ),
  ),
  cardTheme: CardThemeData(
    color: const Color.fromRGBO(255, 255, 255, 1), // hsl(0, 0%, 100%)
    elevation: 1,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  ),
  dividerTheme: DividerThemeData(
    color: const Color.fromRGBO(232, 229, 227, 1), // hsl(20, 5.9%, 90%)
  ),
);

// ThemeData for dark theme
ThemeData darkTheme = darkScheme.toTheme.copyWith(
  textTheme: TextTheme(
    displayLarge: GoogleFonts.inter(fontWeight: FontWeight.w700),
    displayMedium: GoogleFonts.inter(fontWeight: FontWeight.w600),
    displaySmall: GoogleFonts.inter(fontWeight: FontWeight.w500),
    headlineLarge: GoogleFonts.inter(fontWeight: FontWeight.w700),
    headlineMedium: GoogleFonts.inter(fontWeight: FontWeight.w600),
    headlineSmall: GoogleFonts.inter(fontWeight: FontWeight.w500),
    titleLarge: GoogleFonts.inter(fontWeight: FontWeight.w600),
    titleMedium: GoogleFonts.inter(fontWeight: FontWeight.w500),
    titleSmall: GoogleFonts.inter(fontWeight: FontWeight.w400),
    bodyLarge: GoogleFonts.inter(fontWeight: FontWeight.normal),
    bodyMedium: GoogleFonts.inter(fontWeight: FontWeight.normal),
    bodySmall: GoogleFonts.inter(fontWeight: FontWeight.normal),
    labelLarge: GoogleFonts.inter(fontWeight: FontWeight.w500),
    labelMedium: GoogleFonts.inter(fontWeight: FontWeight.w400),
    labelSmall: GoogleFonts.inter(fontWeight: FontWeight.w400),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: const Color.fromRGBO(28, 30, 37, 1),
      ), // hsl(240, 3.7%, 15.9%)
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: const Color.fromRGBO(28, 30, 37, 1)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: medicalBlue, width: 2),
    ),
  ),
  cardTheme: CardThemeData(
    color: const Color.fromRGBO(18, 18, 23, 1), // hsl(240, 10%, 3.9%)
    elevation: 1,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  ),
  dividerTheme: DividerThemeData(
    color: const Color.fromRGBO(28, 30, 37, 1), // hsl(240, 3.7%, 15.9%)
  ),
);

// Extension to provide easy access to custom colors in the theme
extension CustomColors on ThemeData {
  Color get medicalBlue => const Color.fromRGBO(33, 150, 243, 1);
  Color get lightBlue => const Color.fromRGBO(41, 182, 246, 1);
  Color get successGreen => const Color.fromRGBO(52, 199, 89, 1);
  Color get medicalBg => brightness == Brightness.light
      ? const Color.fromRGBO(241, 245, 249, 1)
      : const Color.fromRGBO(28, 30, 37, 1);
}
