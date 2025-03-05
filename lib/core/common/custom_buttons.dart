
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab/core/theme/app_colors.dart';

class Buttons extends StatefulWidget {
  final String text;
  final VoidCallback onpressed;
  final bool isLoading;
  const Buttons({
    super.key,
    required this.text,
    required this.onpressed,
    this.isLoading = false,
  });

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(MediaQuery.of(context).size.width, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: widget.isLoading ? null : widget.onpressed,
        child:
            widget.isLoading
                ? SizedBox(
                  width: 30,
                  height: 30,
                  child: CircularProgressIndicator(
                    color: AppColors.orange,
                    strokeCap: StrokeCap.round,
                  ),
                )
                : Text(
                  widget.text,
                  style: GoogleFonts.varelaRound(
                    color: AppColors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
      ),
    );
  }
}
