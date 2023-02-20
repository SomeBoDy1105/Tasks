import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_task2/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Center(
          child: Icon(
            Icons.check_circle_outline,
            color: Colors.purple,
            size: 100,
          ),
        ),
      ),
    );
  }
}
