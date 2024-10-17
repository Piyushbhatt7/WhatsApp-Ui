import 'package:flutter/material.dart';
import 'package:what_app_ui/Screens/Home/homescreen.dart';
import 'package:what_app_ui/Screens/OnBoarding/onboardingscreen.dart';
import 'package:what_app_ui/Screens/Splash/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF00A884)),
        useMaterial3: false,
        fontFamily: "Regular"
      ),
      home: Homescreen()
    );
  }
}



 