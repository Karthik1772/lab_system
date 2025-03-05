// import 'dart:convert';
// import 'package:bloc_provider/bloc_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:hive/hive.dart';
// import 'package:http/http.dart' as http;
// import 'package:jwt_decoder/jwt_decoder.dart';

// part 'authentication_event.dart';
// part 'authentication_state.dart';

// class AuthBloc extends Bloc<AuthEvent, AuthState> {
//   AuthBloc() : super(AuthInitial()) {
//     on<LoginEvent>(_authLogin);
//   }
//   // Login Event
//   Future<void> _authLogin(LoginEvent event, Emitter<AuthState> emit) async {
//     try {
//       emit(AuthLoadingState());
//       if (event.email.isEmpty || event.password.isEmpty) {
//         emit(AuthFailureState(message: "Please Fill the form Field."));
//         return;
//       }
//       final emailRegex = RegExp(
//         r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
//       );
//       if (!emailRegex.hasMatch(event.email)) {
//         emit(AuthFailureState(message: "Enter a valid email address."));
//         return;
//       }
//       if (event.password.length < 6) {
//         emit(
//           AuthFailureState(
//             message: "Password must be at least 6 characters long.",
//           ),
//         );
//         return;
//       }

//       final passwordRegex = RegExp(
//         r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]+$',
//       );
//       if (!passwordRegex.hasMatch(event.password)) {
//         emit(
//           AuthFailureState(
//             message:
//                 "Password must contain at least 1 uppercase letter, 1 lowercase letter, 1 digit, and 1 special character.",
//           ),
//         );
//         return;
//       }
//       final requestBody = jsonEncode({
//         "student_email": event.email.trim(),
//         "student_password": event.password.trim(),
//       });
//       final jsonResponse = await http.post(
//         Uri.parse(AppUrls.login),
//         body: requestBody,
//         headers: {"Content-Type": "application/json"},
//       );
//       final response = jsonDecode(jsonResponse.body);
//       if (jsonResponse.statusCode != 200) {
//         emit(AuthFailureState(message: response["message"]));
//         return;
//       }
//       final details = JwtDecoder.decode(response["token"]);
//       final userId = details["student_id"];
//       final box = await Hive.openBox("authtoken");
//       box.put("user_id", userId);
//       box.put("token", response["token"]);
//       box.close();
//       emit(AuthSuccessState(message: "login successfull..."));
//     } catch (e) {
//       emit(AuthFailureState(message: "an exception occured."));
//     }
//   }
// }
