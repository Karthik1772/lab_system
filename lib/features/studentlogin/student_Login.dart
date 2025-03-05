import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab/core/common/custom_buttons.dart';
import 'package:lab/core/common/custom_text_field.dart';

class Student extends StatefulWidget {
  const Student({super.key});

  @override
  State<Student> createState() => _StudentState();
}

class _StudentState extends State<Student> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _usnController = TextEditingController();
  final TextEditingController _labController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 20),
            Text(
              "Lab Application",
              style: GoogleFonts.varelaRound(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            CustomTextField(
              controller: _nameController,
              hint: "Name",
              prefixIcon: Icons.person,
            ),
            CustomTextField(
              controller: _usnController,
              hint: "USN",
              prefixIcon: Icons.format_list_numbered_sharp,
            ),
            CustomTextField(
              controller: _labController,
              hint: "Name of the Lab",
              prefixIcon: Icons.business,
            ),
            SizedBox(height: 30),
            Buttons(
              text: "Apply",
              onpressed: () {
                Navigator.pushNamed(context, '/accept');
              },
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
