
import 'package:flutter/material.dart';
import 'package:lab/core/theme/app_colors.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hint;
  final bool isObscure;
  final IconData prefixIcon;
  final bool isPasswordField;
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hint,
    this.isObscure = false,
    required this.prefixIcon,
    this.isPasswordField = false,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool isObscure;
  @override
  void initState() {
    isObscure = widget.isObscure;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      child: TextField(
        controller: widget.controller,
        cursorColor: AppColors.orange,
        cursorHeight: 18,
        obscureText: isObscure,
        decoration: InputDecoration(
          prefixIcon: Icon(widget.prefixIcon),
          hintText: widget.hint,
          suffixIcon:
              widget.isPasswordField
                  ? IconButton(
                    onPressed: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                    },
                    icon: Icon(Icons.remove_red_eye_rounded),
                  )
                  : null,
        ),
      ),
    );
  }
}
