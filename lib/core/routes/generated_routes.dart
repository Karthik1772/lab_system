import 'package:flutter/material.dart';
import 'package:lab/features/splashPage/splash.dart';
import 'package:lab/features/studentAccept/accept.dart';
import 'package:lab/features/studentlogin/student_Login.dart';
import 'package:lab/features/swoHomePage/swo_home.dart';
import 'package:lab/features/swoLogin/swo_login.dart';

class Routes {
  static Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case "/splash":
        return MaterialPageRoute(builder: (context) => splash());
      case "/swoLogin":
        return MaterialPageRoute(builder: (context) => SwoLogin());
      case "/student":
        return MaterialPageRoute(builder: (context) => Student());
      case "/swohome":
        return MaterialPageRoute(builder: (context) => SwoHome());
      case "/accept":
        return MaterialPageRoute(builder: (context) => Accept());
    }
    return null;
  }
}
