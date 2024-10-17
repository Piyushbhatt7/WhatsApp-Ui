import 'package:flutter/material.dart';
import 'package:what_app_ui/Screens/Login/loginscreen.dart';
import 'package:what_app_ui/Widgets/uihelper.dart';

class Onboardingscreen  extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/welcome.png"),
            SizedBox(height: 20,),
            UiHelper.CustomText(text: "Welcome to WhatsApp", height: 20.0, color: Color(0xFF000000)),
            SizedBox(height: 20,),

            Row(
        
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [
                UiHelper.CustomText(text: "Read out", height: 14),
                UiHelper.CustomText(text: " Privacy Policy. ", height: 14, color: Color(0xFF0C42CC)),
                UiHelper.CustomText(text: "Tap ''Agree and countinue''", height: 14),
                
              ],
            ),

          SizedBox(height: 4.0,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: "to accept the ", height: 14),
                UiHelper.CustomText(text: "Terms of Services", height: 14, color: Color(0xFF0C42CC))
              ],
            ),
          ],
        ),
      ),

    floatingActionButton: UiHelper.CustomButton(callback: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
    }, buttonname: "Agree and continue"),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );
    
  }
}