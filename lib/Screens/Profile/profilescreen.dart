import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:what_app_ui/Screens/Home/homescreen.dart';
import 'package:what_app_ui/Widgets/uihelper.dart';

class Profilescreen extends StatefulWidget {
  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  TextEditingController namecontroller = TextEditingController();

  File? pickedimage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 80.0,
            ),
            UiHelper.CustomText(
                text: "Profile info",
                height: 16,
                color: Color(0XFF00A884),
                fontweight: FontWeight.bold),
            SizedBox(height: 30.0),
            UiHelper.CustomText(
                text: "Please provide your name and an optional", height: 14),
            UiHelper.CustomText(text: "profile photo", height: 14),
            SizedBox(
              height: 20.0,
            ),
            GestureDetector(
              onTap: () {
                _openBottom(context);
              },

              child: pickedimage==null? CircleAvatar(
                radius: 80,
                backgroundColor: Color(0XFFD9D9D9),
                child: Image.asset(
                  "assets/images/photo-camera.png",
                  height: 40,
                  fit: BoxFit.cover,
                ),
              ): CircleAvatar(
                radius: 80,
                backgroundImage: FileImage(pickedimage!),

              )
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 243,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    controller: namecontroller,
                    decoration: InputDecoration(
                        hintText: "Type your name here",
                        hintStyle: TextStyle(color: Color(0xFF5E5E5E)),
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0XFF05AA82))),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF05AA82))),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFF05AA82)))),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset("assets/images/happy-face.png")
              ],
            )
          ],
        ),
      ),
      floatingActionButton:
          UiHelper.CustomButton(callback: () {
           
           Navigator.push(context, MaterialPageRoute(builder: (context)=> Homescreen()));

          }, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _openBottom(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 200,
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    
                    IconButton(onPressed: (){
                           _pickImage(ImageSource.camera);
                    }, 
                    icon: Icon(
                      Icons.camera_alt,
                      size: 80.0,
                      color: Colors.grey,
                    ),),
                    
                    IconButton(onPressed: (){
                          _pickImage(ImageSource.gallery);
                    }, 
                    icon: Icon(
                      Icons.image,
                      size: 80.0,
                      color: Colors.grey,
                    ),)
                  ],
                ),
              ],
            ),
          );
        });
  }

  _pickImage(ImageSource imagesource) async {
    try {
      final photo = await ImagePicker().pickImage(source: imagesource);
      if (photo == null) return;
      final tempimage = File(photo.path);

      setState(() {
        pickedimage = tempimage;
      });
    } catch (ex) {
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          ex.toString(),
        ),
        backgroundColor: Color(0XFF00A882),
      ));
    }
  }
}
