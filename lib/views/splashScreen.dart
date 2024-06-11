// ignore_for_file: file_names
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gkwithakhtarmalik/Helper/widthHeight.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/signup');
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = getScreenHeight(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "GKWITHAKHTARMALIK",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: height * 0.020),
            Text('Welcome to GK', style: TextStyle(fontSize: height * 0.024)),
          ],
        ),
      ),
    );
  }
}
