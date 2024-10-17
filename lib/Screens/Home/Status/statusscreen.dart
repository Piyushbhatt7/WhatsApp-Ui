import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:what_app_ui/Widgets/uihelper.dart';

class Statusscreen extends StatelessWidget{

  var statusContent = [
    {
          
          "img": "https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg",
          "name": "Michale",
          "status": "15 min ago"
    },

    {
          
          "img": "https://images.unsplash.com/photo-1522529599102-193c0d76b5b6?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fG1hbnxlbnwwfHwwfHx8MA%3D%3D",
          "name": "Abrahm",
          "status": "27 min ago"
    },

    {
          
          "img": "https://assets.bwbx.io/images/users/iqjWHBFdfxIU/iJfiyiKvos8Y/v1/-1x-1.webp",
          "name": "Elon",
          "status": "1 hour ago"
    },

    {
          
          "img": "https://b.fssta.com/uploads/application/soccer/headshots/885.vresize.350.350.medium.19.png",
          "name": "Ronaldo",
          "status": "1 day ago"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
        children: [
          SizedBox(
            height: 30.0,
          ),
         Row(
          children: [
            SizedBox(width: 20,),
             UiHelper.CustomText(text: "Status", height: 20)
          ],
         ),

         SizedBox(height: 10,),
         ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Stack(
              children: [CircleAvatar(
                radius: 25.0,
                backgroundImage: NetworkImage("https://greekherald.com.au/wp-content/uploads/2020/07/default-avatar.png"),
              ),

              Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Color(0XFF008069),
                  child: Center(child: Icon(Icons.add, color: Color(0XFFFFFFFFF), size: 15,)),
                ),
              )
              ]
            ),
          ),
         
         title: UiHelper.CustomText(text: "My Status", height: 20),
         subtitle: UiHelper.CustomText(text: "Tap to aa ststs update", height: 15),

         ),
         SizedBox(height: 20.0,),

         Padding(
           padding: const EdgeInsets.only(left: 20, right: 20),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              UiHelper.CustomText(text: "Recent updates", height: 15),
           
              Icon(Icons.arrow_drop_down, color: Color(0XFF5E5E5E),)
            ],
           ),
         ),

         SizedBox(height: 10,),

        Expanded(
          child: ListView.builder(itemBuilder: (context, index){
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(statusContent[index]["img"].toString()),
              
            ),
            title: UiHelper.CustomText(text: statusContent[index]["name"].toString(), height: 16, fontweight: FontWeight.bold),
            subtitle: UiHelper.CustomText(text: statusContent[index]["status"].toString(), height: 14),
          );
           
          }, itemCount: statusContent.length,),
        )
   


        ],
       )
    );
    
  }
}