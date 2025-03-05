
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab/core/theme/app_colors.dart';

class CustomSnackbar {
  static snackbarShow(BuildContext context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: AppColors.orange,
        duration: Duration(seconds: 2),
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        content: Text(
          text,
          style: GoogleFonts.poppins(
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}