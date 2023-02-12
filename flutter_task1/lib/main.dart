import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'splash_screen.dart';

void main() {
  runApp( MaterialApp(
    initialRoute: '/splashScreen',
    debugShowCheckedModeBanner: false,
    routes: {
      '/homeScreen':(context) => const HomeScreen(),
      '/splashScreen':(context) => const SplashScreen(),
    },
  ));
}