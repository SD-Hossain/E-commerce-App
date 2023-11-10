import 'package:flutter/material.dart';
class accpro extends ChangeNotifier {
  dynamic name = ["Hossain", "01917282201"] ;
  dynamic b= [
    "hossain501212@gmail.com","20", "Khilkhet, Dhaka","A+", "Islam"
  ];
  dynamic list = [
    { "title" : 'Order Details',
      "icon" : Icons.home,

    },
    {  "title" : 'Edit Profile',
      "icon" : Icons.person,


    },
    {  "title" : 'Address',
      "icon" : Icons.edit_location,
    },
    {  "title" : 'Change Language',
      "icon" : Icons.translate,
    },
    {  "title" : 'Log Out',
      "icon" : Icons.logout,
    },
  ];
  dynamic colour = [Color(0xffd81d4c),Colors.blue,Colors.green,Colors.yellow,Colors.red];
}