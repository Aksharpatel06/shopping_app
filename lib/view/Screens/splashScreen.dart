import 'package:flutter/material.dart';
import 'dart:async';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
    return SafeArea(
        child: Scaffold(
          body: Container(
            height: double.infinity,
              width: double.infinity,
              child: Image.asset('asset/img/logo.png')),
        )
    );
  }
}
