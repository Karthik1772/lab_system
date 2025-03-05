
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab/core/theme/app_colors.dart';

class AppTheme {
  static _borderTheme([Color borderColor = Colors.grey, double width = 1]) =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(color: borderColor, width: width),
      );
  static final ThemeData lightTheme = ThemeData.light(
    useMaterial3: true,
  ).copyWith(
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: AppBarTheme(//__________________________________________________________APP_BAR
      backgroundColor: AppColors.white,
      iconTheme: IconThemeData(color: AppColors.orange),
      actionsIconTheme: IconThemeData(color: AppColors.orange),
      elevation: 0,
      titleTextStyle: GoogleFonts.poppins(
        color: AppColors.black,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(//_____________________________________TEXT_FIELD
      suffixIconColor: AppColors.orange,
      prefixIconColor: AppColors.orange,
      hintStyle: GoogleFonts.poppins(color: AppColors.darkGrey),
      errorBorder: _borderTheme(AppColors.red, 2),
      focusedBorder: _borderTheme(AppColors.orange, 2),
      enabledBorder: _borderTheme(),
      disabledBorder: _borderTheme(),
      border: _borderTheme(),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(//__________________________________BUTTONS
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(AppColors.orange),
      ),
    ),
  );
}
