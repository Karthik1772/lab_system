// import 'package:bloc_provider/bloc_provider.dart';
// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab/core/common/custom_buttons.dart';
// import 'package:lab/core/common/custom_buttons.dart';
// import 'package:lab/core/common/custom_snackbar.dart';
import 'package:lab/core/common/custom_text_field.dart';
// import 'package:lab/core/theme/app_colors.dart';
// import 'package:lab/features/swoLogin/bloc/authentication_bloc.dart';

class SwoLogin extends StatefulWidget {
  const SwoLogin({super.key});

  @override
  State<SwoLogin> createState() => _SwoLoginState();
}

class _SwoLoginState extends State<SwoLogin> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
    // BlocListener<AuthBloc, AuthState>(
    //   listener: (context, state) {
    //     if (state is AuthSuccessState) {
    //       CustomSnackbar.snackbarShow(context, state.message);
    //       Navigator.pushNamed(context, "/homepage");
    //     }
    //     if (state is AuthFailureState) {
    //       CustomSnackbar.snackbarShow(context, state.message);
    //     }
    //   },
    //   child:
    SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 10),
            Text(
              "Hostel Login",
              style: GoogleFonts.varelaRound(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              width: 200,
              height: 200,
              child: Image.asset("assets/logo.png"),
            ),
            CustomTextField(
              controller: _emailController,
              hint: "Email",
              prefixIcon: Icons.email,
            ),
            CustomTextField(
              isPasswordField: true,
              isObscure: true,
              controller: _passwordController,
              hint: "Password",
              prefixIcon: Icons.lock,
            ),
            Align(
              alignment: Alignment(0.8, 0),
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/forgotpass'),
                child: Text(
                  "Forgot Password",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            // BlocBuilder<AuthBloc, AuthState>(
            //   builder: (context, state) {
            //     return Buttons(
            //       isLoading: state is AuthLoadingState,
            //       text: "Login",
            //       onpressed: () {
            //         BlocProvider.of<AuthBloc>(context).add(
            //           LoginEvent(
            //             email: _emailController.text,
            //             password: _passwordController.text,
            //           ),
            //         );
            //       },
            //     );
            //   },
            // ),
            Buttons(
              text: "Login",
              onpressed: () {
                Navigator.pushNamed(context, '/swohome');
              },
            ),
          ],
        ),
      ),
    );
    // );
  }
}
