import 'package:flutter/material.dart';
import 'package:gametv/screens/home/home.dart';
import 'package:gametv/screens/login.dart';
// import 'package:poc/tts.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'home':
        return MaterialPageRoute(
          builder: (_) => Home(),
        );
      // case 'otp':
      //   return MaterialPageRoute(
      //     builder: (_) => OTP(),
      //   );
      case 'login':
        return MaterialPageRoute(
          builder: (_) => Login(),
        );
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
