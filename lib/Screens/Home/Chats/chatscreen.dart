import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:what_app_ui/Screens/Home/Contact/contactscreen.dart';
import 'package:what_app_ui/Widgets/uihelper.dart';

class Chatscreen extends StatelessWidget{

  var arrContent = [
      {
        "userimages":"https://media.vanityfair.com/photos/5cf71b7e5d0130aa612df063/master/pass/zuckerberg1.jpg",
        "name": "Mark",
        "lastmsg": "Today",
        "time": "12:07 pm",
        "msg": "7"
      },

      {
        "userimages":"https://ca-times.brightspotcdn.com/dims4/default/12fc52c/2147483647/strip/true/crop/3071x2048+0+0/resize/1200x800!/quality/75/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2Fec%2F21%2Fc0faf8844835aa6055d3932e6a5a%2Felon-musk-solarcity-lawsuit-30775.jpg",
        "name": "Elon",
        "lastmsg": "Today",
        "time": "18:02 pm",
        "msg": "2"
      },
      
       {
        "userimages":"https://b.fssta.com/uploads/application/soccer/headshots/885.vresize.350.350.medium.19.png",
        "name": "Ronaldo",
        "lastmsg": "Today",
        "time": "10:00 am",
        "msg": "1"
      },

        {
        "userimages":"https://www.czbiohub.org/wp-content/uploads/2024/03/sam-altman.png?w=761",
        "name": "Sam Altman",
        "lastmsg": "Yesterday",
        "time": "1:07 am",
        "msg": "1"
      },

      {
        "userimages":"https://www.edge.org/sites/default/files/styles/member-photo/public/member-pictures/bk_262_larry_page.jpg?itok=S7b6-JsZ",
        "name": "Larry",
        "lastmsg": "Yesterday",
        "time": "20:02 pm",
        "msg": "2"
      },
      
       {
        "userimages":"https://www.detroitchamber.com/wp-content/uploads/2022/06/Steve-Ballmer_Blog.png",
        "name": "Steve",
        "lastmsg": "Yesterday",
        "time": "10:00 am",
        "msg": "1"
      },

      {
        "userimages":"https://media.vanityfair.com/photos/5cf71b7e5d0130aa612df063/master/pass/zuckerberg1.jpg",
        "name": "Mark",
        "lastmsg": "Today",
        "time": "12:07 pm",
        "msg": "7"
      },

      {
        "userimages":"https://ca-times.brightspotcdn.com/dims4/default/12fc52c/2147483647/strip/true/crop/3071x2048+0+0/resize/1200x800!/quality/75/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2Fec%2F21%2Fc0faf8844835aa6055d3932e6a5a%2Felon-musk-solarcity-lawsuit-30775.jpg",
        "name": "Elon",
        "lastmsg": "Today",
        "time": "18:02 pm",
        "msg": "2"
      },
      
       {
        "userimages":"https://b.fssta.com/uploads/application/soccer/headshots/885.vresize.350.350.medium.19.png",
        "name": "Ronaldo",
        "lastmsg": "Today",
        "time": "10:00 am",
        "msg": "1"
      },

     
      
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            SizedBox(height: 10.0,),
            Expanded(
              child: ListView.builder(
               
                itemBuilder: (BuildContext context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(arrContent[index]["userimages"].toString()),
                    ),
                    title: UiHelper.CustomText(text: arrContent[index]["name"].toString(), height: 16
                    , fontweight: FontWeight.bold),
                    subtitle: UiHelper.CustomText(text: arrContent[index]["lastmsg"].toString(), height: 12, color: Color(0xFF889095)),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        UiHelper.CustomText(text: arrContent[index]["time"].toString(), height: 12, color: Color(0XFF026500)),
              
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Color(0xff036a01),
                           child: UiHelper.CustomText(text: arrContent[index]["msg"].toString(), height: 12, color: Color.fromARGB(255, 245, 247, 245)),
                        )
                      ],
                    ),
                  );
                },  itemCount: arrContent.length,
              ),
            ),
          ],
        ),
      
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Contactscreen()));
        },
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Color(0XFF008665),
          child: Image.asset("assets/images/chatsw.png"),
        ),
      )

    );
    
  }
}