import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:what_app_ui/Widgets/uihelper.dart';

class Contactscreen extends StatelessWidget{

  var contactContent = [
    {

    "img":"https://www.aljazeera.com/wp-content/uploads/2022/12/2022-12-09T230002Z_911369896_UP1EIC91P9FZ3_RTRMADP_3_SOCCER-WORLDCUP-NLD-ARG-REPORT.jpg?resize=1800%2C1756",
    "name":"Messi",
    "status": "Playing with Balls",
    },

    {

    "img":"https://static.toiimg.com/thumb/msid-104574403,width-1280,height-720,resizemode-4/104574403.jpg",
    "name":"Neymar",
    "status": "Busy",
    },

    {

    "img":"https://muslimmatters.org/wp-content/uploads/khabibpointing.jpg",
    "name":"Kabib",
    "status": "Fight and Pray",
    },


    {

    "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTD2LYflzTpQsg7EkBag7SZfdRCVQ3h6B_FfcVPEqSMGeK4UwNpDS9Pj3b87gGBlQ6Iw7I&usqp=CAU",
    "name":"David",
    "status": "Cs50",
    },

    {

    "img":"https://plus.unsplash.com/premium_photo-1664541336692-e931d407ba88?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8cGVyc29ufGVufDB8fDB8fHww",
    "name":"Tajmia",
    "status": "Gen-Z",
    },

    {

    "img":"https://images.unsplash.com/photo-1488424138610-252b5576e079?q=80&w=812&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "name":"Keith Johnston",
    "status": "Kich it hard",
    },

    {

    "img":"https://phantom-marca.unidadeditorial.es/4a5dc57875b516fbd4d32cbb3c96ef0c/resize/828/f/jpg/assets/multimedia/imagenes/2024/09/24/17271703805185.jpg",
    "name":"Conor",
    "status": "Come and Fight",
    },


    {

    "img":"https://images.unsplash.com/photo-1534458246008-80a1ce3028cd?q=80&w=387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "name":"Daniel",
    "status": "Only Scakets❤️",
    },


        {

    "img":"https://muslimmatters.org/wp-content/uploads/khabibpointing.jpg",
    "name":"Kabib",
    "status": "Fight and Pray",
    },


    {

    "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTD2LYflzTpQsg7EkBag7SZfdRCVQ3h6B_FfcVPEqSMGeK4UwNpDS9Pj3b87gGBlQ6Iw7I&usqp=CAU",
    "name":"David",
    "status": "Cs50",
    },

    {

    "img":"https://plus.unsplash.com/premium_photo-1664541336692-e931d407ba88?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8cGVyc29ufGVufDB8fDB8fHww",
    "name":"Tajmia",
    "status": "Gen-Z",
    },

    {

    "img":"https://images.unsplash.com/photo-1488424138610-252b5576e079?q=80&w=812&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "name":"Keith Johnston",
    "status": "Kich it hard",
    },

    {

    "img":"https://phantom-marca.unidadeditorial.es/4a5dc57875b516fbd4d32cbb3c96ef0c/resize/828/f/jpg/assets/multimedia/imagenes/2024/09/24/17271703805185.jpg",
    "name":"Conor",
    "status": "Come and Fight",
    },


    {

    "img":"https://images.unsplash.com/photo-1534458246008-80a1ce3028cd?q=80&w=387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "name":"Daniel",
    "status": "Only Scakets❤️",
    },

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UiHelper.CustomText(text: "Select Contact", height: 16, color: Colors.white), 
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
           IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_sharp)),

        ],
      ),
      body: ListView.builder(itemBuilder: (context, index){
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(contactContent[index]["img"].toString()),
          ),
          title: UiHelper.CustomText(text: contactContent[index]["name"].toString(), height: 16, fontweight: FontWeight.bold, color: Color(0XFF000000)),
          subtitle: UiHelper.CustomText(text: contactContent[index]["status"].toString(), height: 14),
        );
      }, itemCount: contactContent.length,),
    );
    
  }
}