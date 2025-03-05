import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab/core/theme/app_colors.dart';

class SwoHome extends StatefulWidget {
  const SwoHome({super.key});

  @override
  State<SwoHome> createState() => _SwoHomeState();
}

class _SwoHomeState extends State<SwoHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "          HomePage",
            style: GoogleFonts.varelaRound(
              color: AppColors.orange,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(children: []),
      ),
    );
  }
}
