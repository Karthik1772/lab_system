import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab/core/theme/app_colors.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 200,
              height: 200,
              child: Image.asset("assets/logo.png"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          // border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(90),
                        ),
                        child: Icon(Icons.person, size: 75),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/student');
                      },
                    ),
                    Text(
                      "Student Login",
                      style: GoogleFonts.varelaRound(
                        color: AppColors.black,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          // border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(90),
                        ),
                        child: Icon(Icons.business, size: 75),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/swoLogin');
                      },
                    ),
                    Text(
                      "Warden Login",
                      style: GoogleFonts.varelaRound(
                        color: AppColors.black,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
