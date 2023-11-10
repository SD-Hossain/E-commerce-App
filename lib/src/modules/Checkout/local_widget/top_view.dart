import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopView extends StatefulWidget {
  const TopView({super.key});

  @override
  State<TopView> createState() => _TopViewState();
}

class _TopViewState extends State<TopView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 30.h,
          color: Colors.white,
          width: MediaQuery.sizeOf(context).width,
          margin: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Billing Address"),
              Text("CHANGE",style: TextStyle(color: Color(0xffd81d4c)),)
            ],
          ),
        ),
        Container(
          color:Colors.grey[200] ,
          margin: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hossain",style: TextStyle(fontSize: 16.sp),),
                  SizedBox(height: 2.h,),
                  Text("No Address Provide")
                ],
              ),
              Container(
                  height: 30.h,
                  width: 30.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey.shade300
                  ),
                  child: Center(child: Icon(Icons.edit,size: 20,)))
            ],
          ),
        ),
        Container(
          height: 30.h,
          width: MediaQuery.sizeOf(context).width,
          margin: EdgeInsets.all(10),
          color: Colors.white,
          child: Text("Contact Number"),
        ),
        Container(

          color:Colors.grey[200] ,
          margin: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: 40.h,
                  child: Center(child: Text("01917282201",style: TextStyle(fontSize: 16.sp),))),
              Container(
                  height: 30.h,
                  width: 30.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey.shade300
                  ),
                  child: Center(child: Icon(Icons.edit,size: 20,)))
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          height: 30.h,
          width: MediaQuery.sizeOf(context).width,
          color: Colors.white,
          child: Text("Products"),
        )
      ],
    );
  }
}
