import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab/core/common/custom_buttons.dart';
import 'package:lab/core/theme/app_colors.dart';

class Accept extends StatefulWidget {
  const Accept({super.key});

  @override
  State<Accept> createState() => _AcceptState();
}

class _AcceptState extends State<Accept> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                width: 200,
                height: 200,
                child: Image.asset("assets/download.png"),
              ),
              SizedBox(height: 70),
              Row(
                children: [
                  Text(
                    "NAME : ",
                    style: GoogleFonts.workSans(
                      color: AppColors.black,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "KARTHIK S KASHYAP",
                    style: GoogleFonts.workSans(
                      color: AppColors.black,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "USN : ",
                    style: GoogleFonts.workSans(
                      color: AppColors.black,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "4AL22EC032",
                    style: GoogleFonts.workSans(
                      color: AppColors.black,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "OUT TIME : ",
                    style: GoogleFonts.workSans(
                      color: AppColors.black,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "18.00",
                    style: GoogleFonts.workSans(
                      color: AppColors.black,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "IN TIME : ",
                    style: GoogleFonts.workSans(
                      color: AppColors.black,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "20.00",
                    style: GoogleFonts.workSans(
                      color: AppColors.black,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Buttons(
                text: "Log Out",
                onpressed: () {
                  Navigator.pushNamed(context, '/splash');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
