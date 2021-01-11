import 'package:flutter/material.dart';
import 'package:gametv/core/router.dart';
import 'package:gametv/screens/home/home.dart';
import 'package:gametv/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

  runApp(MyApp(isLoggedIn));
}

class MyApp extends StatelessWidget {
  final isLoggedIn;
  MyApp(this.isLoggedIn);

  @override
  Widget build(BuildContext context) {
    // print(phone);
    return MaterialApp(
      title: 'Flutter Login UI',
      debugShowCheckedModeBanner: false,
      home: isLoggedIn ? Home() : Login(),
      initialRoute: '/',
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
