import 'package:flutter/material.dart';
import 'package:flutter_task2/home_screen.dart';
import 'package:flutter_task2/splash_screen.dart';
void main() {
  runApp(
    MaterialApp(
      initialRoute: '/splashScreen',
      debugShowCheckedModeBanner: false,
      routes: {
        '/homeScreen': (context) => const HomeScreen(),
        '/splashScreen': (context) => const SplashScreen(),
      },
    ),
  );
}
