
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AlertBoxHome{
  Future<void> showMyDialog(con,pro) async {
    return showDialog<void>(
      context: con,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title:   Center(child: Text('Are you sure you want to delete the selected product from the cart?')),
          actions: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Container(
                height: 30.h,
                width: 90.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffd81d4c),
                ),
                child: Center(child: Text('CANCEL',style: TextStyle(color: Colors.white),)),
              ),
            ),
            GestureDetector(
              onTap: (){
               pro.deletechk();
                pro.clearlist();
                Navigator.of(context).pop();
              },
              child: Container(
                height: 30.h,
                width: 70.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color:Colors.indigo[900] ,
                ),
                child: Center(child: Text('OK',style: TextStyle(color: Colors.white),)),
              ),
            ),
          ],
        );
      },
    );
  }
}
