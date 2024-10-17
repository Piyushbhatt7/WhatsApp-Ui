import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:what_app_ui/Screens/Home/Calls/callsscreen.dart';
import 'package:what_app_ui/Screens/Home/Camera/camerascreen.dart';
import 'package:what_app_ui/Screens/Home/Chats/chatscreen.dart';
import 'package:what_app_ui/Screens/Home/Status/statusscreen.dart';
import 'package:what_app_ui/Widgets/uihelper.dart';

class Homescreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
       
       appBar: AppBar(
        elevation: 0,
        bottom: TabBar(tabs: [
          Tab(icon: Icon(Icons.camera_alt),),
          Tab(text: "CHATS",),
          Tab(text: "STATUS",),
          Tab(text: "CALLS",)
       
       
        ],

        indicatorColor: Colors.white
        
        ),
        toolbarHeight: 80,
        title: UiHelper.CustomText(text: "WhatsApp", height: 20, color: Colors.white, fontweight: FontWeight.bold),
        actions: [
            IconButton(onPressed: (){
            
            }, 
            icon: Image.asset("assets/images/Search.png",color: Colors.white,)),

            IconButton(onPressed: (){

            }, icon: Icon(Icons.more_vert_sharp))
          
        ],
       ),

       body: TabBarView(children: [

        Camerascreen(),
        Chatscreen(),
        Statusscreen(),
        Callsscreen()
        
        

       ]),
   
      ),
    );
    
  }
}