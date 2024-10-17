import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:what_app_ui/Widgets/uihelper.dart';

class Callsscreen extends StatelessWidget{

  var callContent = [
    {
        "name": "Ronaldo", 
        "img": "https://b.fssta.com/uploads/application/soccer/headshots/885.vresize.350.350.medium.19.png",
        "calltime": "15 min ago",
  },

    {
        "name": "Elon musk", 
        "img": "https://assets.bwbx.io/images/users/iqjWHBFdfxIU/iJfiyiKvos8Y/v1/-1x-1.webp",
        "calltime": "1 hour ago",
  },

     {
        "name": "Mark", 
        "img": "https://media.vanityfair.com/photos/5cf71b7e5d0130aa612df063/master/pass/zuckerberg1.jpg",
        "calltime": "3 day ago",
  },

   {
        "name": "Sam", 
        "img": "https://www.czbiohub.org/wp-content/uploads/2024/03/sam-altman.png?w=761",
        "calltime": "1 hour ago",
  },

     {
        "name": "Abhram", 
        "img": "https://images.unsplash.com/photo-1522529599102-193c0d76b5b6?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fG1hbnxlbnwwfHwwfHx8MA%3D%3D",
        "calltime": "3 day ago",
  },


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            SizedBox(height: 20.0,),
            Row(
              children: [
                SizedBox(width: 20.0,),
                UiHelper.CustomText(text: "Recent", height: 18),
             
              ],
            ),

            SizedBox(height: 8,),

             Expanded(
                  child: ListView.builder(itemBuilder: (context, index){
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(callContent[index]["img"].toString()),
                      ),
                      title: UiHelper.CustomText(text: callContent[index]["name"].toString(), height: 18, fontweight: FontWeight.bold, color: Colors.black),
                      subtitle: UiHelper.CustomText(text: callContent[index]["calltime"].toString(), height: 16),
                      trailing: Icon(Icons.call, color: Color(0xFF00A884),),
                    );
                  }, itemCount: callContent.length,
                  ),
                )
             
          ],
        )
    );
    
  }
}