import 'dart:async';
import 'package:flutter/material.dart';
import 'package:what_app_ui/Screens/OnBoarding/onboardingscreen.dart';
import 'package:what_app_ui/Widgets/uihelper.dart';

class Splashscreen  extends StatefulWidget{ 

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Onboardingscreen()));

    });

    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        
            Image.asset("assets/images/whatsapp.png"),
             SizedBox(height: 20,),

             UiHelper.CustomText(text: "WhatsApp", height: 18, fontweight: FontWeight.bold),
          ],
        ),
      ),

    );
    
  }
}