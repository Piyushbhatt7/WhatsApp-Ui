import 'package:flutter/material.dart';
import 'package:what_app_ui/Screens/Profile/profilescreen.dart';
import 'package:what_app_ui/Widgets/uihelper.dart';

class OTPScreen extends StatelessWidget {
  String phonenumber;
  OTPScreen({required this.phonenumber});

  TextEditingController otp1 = TextEditingController();
  TextEditingController otp2 = TextEditingController();
  TextEditingController otp3 = TextEditingController();
  TextEditingController otp4 = TextEditingController();
  TextEditingController otp5 = TextEditingController();
  TextEditingController otp6 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 80,
            ),
            UiHelper.CustomText(
                text: "Verify your number",
                height: 20,
                color: Color(0XFF00A884),
                fontweight: FontWeight.bold),
            SizedBox(
              height: 20,
            ),
            UiHelper.CustomText(
                text: "You've tried to register +91 ${phonenumber}",
                height: 15),
            UiHelper.CustomText(
                text: "recently. Wait before requesting an sms or a call",
                height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: "with your code. ", height: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: UiHelper.CustomText(
                      text: "Wrong number?",
                      height: 15,
                      color: Color(0XFF00A884)),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                UiHelper.CustomContainer(otp1),
                UiHelper.CustomContainer(otp2),
                UiHelper.CustomContainer(otp3),
                UiHelper.CustomContainer(otp4),
                UiHelper.CustomContainer(otp5),
                UiHelper.CustomContainer(otp6),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            UiHelper.CustomText(
                text: "Didn't receive code?",
                height: 14,
                color: Color(0xFF00A884))
          ],
        ),
      ),
      floatingActionButton:
          UiHelper.CustomButton(callback: () {

            Navigator.push(context, MaterialPageRoute(builder: (context)=> Profilescreen()));
          }, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
