import 'package:flutter/material.dart';
import 'Screens/Home_screen.dart';
import 'Screens/Login_screen.dart';
import 'Screens/Signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: HomeScreen(),
      routes: {
        "LoginScreen": (context) => LoginScreen(), // صفحة تسجيل الدخول
        "SignUpScreen": (context) => Signupscreen(), // صفحة التسجيل
      },
    );
  }
}
