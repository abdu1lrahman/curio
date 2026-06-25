import 'package:curio/view/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryLightMode,
      brightness: Brightness.light,
    ),
    // textTheme: lightmodetexttheme,
  );

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryDarkMode,
      brightness: Brightness.dark,
    ),
    textTheme: darkmodetexttheme,
  );
}

TextTheme lightmodetexttheme = TextTheme(
  bodyLarge: TextStyle(color: Colors.black),
  bodyMedium: TextStyle(color: Colors.black),
  bodySmall: TextStyle(color: Colors.black),
);

TextTheme darkmodetexttheme = TextTheme(
  headlineLarge: TextStyle(color: Colors.black),
  headlineMedium: TextStyle(color: Colors.black),
  headlineSmall: TextStyle(color: Colors.black),
  titleLarge: TextStyle(color: Colors.black),
  titleMedium: TextStyle(color: Colors.black),
  titleSmall: TextStyle(color: Colors.black),
  bodyLarge: TextStyle(color: Colors.black),
  bodyMedium: TextStyle(color: Colors.black),
  bodySmall: TextStyle(color: Colors.black),
);
