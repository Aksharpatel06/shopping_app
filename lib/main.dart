import 'package:app/view/Screens/homeScreen.dart';
import 'package:app/view/Screens/cardScreen.dart';
import 'package:app/view/Screens/productScreen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context)=>home(),
        '/product':(context)=>product(),
        '/last':(context)=>lastscreen(),
      },
    );
  }
}

