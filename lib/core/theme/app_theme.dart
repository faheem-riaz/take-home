import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:take_home/core/theme/app_colors.dart';

class AppTheme {
  // Right now there is only one theme but if you need dark theme
  // you just need to put colors in the dark theme variable
  static final darkTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.lightBlue,
    canvasColor: AppColors.cardBackground,
    scaffoldBackgroundColor: AppColors.scaffoldBackground,
    cardColor: AppColors.cardBackground,
    fontFamily: GoogleFonts.montserrat().fontFamily,
    textTheme: GoogleFonts.montserratTextTheme(),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: AppColors.yellow),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
      enabledBorder: OutlineInputBorder(),
      errorBorder: OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(),
      disabledBorder: OutlineInputBorder(),
      focusedErrorBorder: OutlineInputBorder(),
      outlineBorder: BorderSide(),
    ),
    dropdownMenuTheme: const DropdownMenuThemeData(
      inputDecorationTheme: InputDecorationTheme(
        fillColor: Colors.white,
        filled: true,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.lightBlue, width: 2.0),
          borderRadius: BorderRadius.zero,
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2.0),
          borderRadius: BorderRadius.zero,
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.lightGrey, width: 1.0),
          borderRadius: BorderRadius.zero,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.lightGrey, width: 1.0),
          borderRadius: BorderRadius.zero,
        ),
        disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.lightGrey, width: 1.0),
          borderRadius: BorderRadius.zero,
        ),
        labelStyle: TextStyle(
          color: Colors.lightBlue,
        ),
      ),
      menuStyle: MenuStyle(
        padding: WidgetStatePropertyAll(EdgeInsets.symmetric()),
        fixedSize: WidgetStatePropertyAll(Size(200, 40)),
        backgroundColor: WidgetStatePropertyAll(
          AppColors.cardBackground,
        ),
      ),
    ),
  );

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.lightBlue,
    scaffoldBackgroundColor: AppColors.scaffoldBackground,
    cardColor: AppColors.cardBackground,
    fontFamily: GoogleFonts.montserrat().fontFamily,
    textTheme: GoogleFonts.montserratTextTheme(),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: AppColors.yellow),
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: Colors.white,
      filled: true,
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.lightBlue, width: 2.0),
        borderRadius: BorderRadius.zero,
      ),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.red, width: 2.0),
        borderRadius: BorderRadius.zero,
      ),
      border: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.lightGrey, width: 1.0),
        borderRadius: BorderRadius.zero,
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.lightGrey, width: 1.0),
        borderRadius: BorderRadius.zero,
      ),
      disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.lightGrey, width: 1.0),
        borderRadius: BorderRadius.zero,
      ),
      labelStyle: TextStyle(
        color: Colors.lightBlue,
      ),
    ),
    dropdownMenuTheme: const DropdownMenuThemeData(
      inputDecorationTheme: InputDecorationTheme(
        fillColor: Colors.white,
        filled: true,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.lightBlue, width: 2.0),
          borderRadius: BorderRadius.zero,
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2.0),
          borderRadius: BorderRadius.zero,
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.lightGrey, width: 1.0),
          borderRadius: BorderRadius.zero,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.lightGrey, width: 1.0),
          borderRadius: BorderRadius.zero,
        ),
        disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.lightGrey, width: 1.0),
          borderRadius: BorderRadius.zero,
        ),
        labelStyle: TextStyle(
          color: Colors.lightBlue,
        ),
      ),
      menuStyle: MenuStyle(
        padding: WidgetStatePropertyAll(EdgeInsets.symmetric()),
        fixedSize: WidgetStatePropertyAll(Size(200, 40)),
      ),
    ),
  );
}

extension ThemeGetter on BuildContext {
  ThemeData get theme => Theme.of(this);
}
