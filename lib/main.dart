import 'package:flutter/material.dart';
import 'package:fundi_sawa/screens/my_screen.dart';
import 'package:fundi_sawa/screens/on_boarding_screen.dart';
import 'package:fundi_sawa/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        '/on_boarding_screen': (context) => OnBoardingScreen(),
      },
    );
  }
}


