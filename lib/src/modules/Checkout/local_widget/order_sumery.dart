import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomView extends StatefulWidget {
  const BottomView({super.key});

  @override
  State<BottomView> createState() => _BottomViewState();
}

class _BottomViewState extends State<BottomView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          height: 30.h,
          width: MediaQuery.sizeOf(context).width,
          color: Colors.white,
          child: Text("Order Summery"),
        ),
        Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(30),
          height: 150.h,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Subtotal"),
                  SizedBox(height: 5.h,),
                  Text("Delivery Charge"),
                  SizedBox(height: 5.h,),
                  Text("Vat"),
                  SizedBox(height: 5.h,),
                  Text("Total"),
                  SizedBox(height: 5.h,),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("SAR 450000.00"),
                  SizedBox(height: 5.h,),
                  Text("SAR 500.00"),
                  SizedBox(height: 5.h,),
                  Text("SAR 500.00"),
                  SizedBox(height: 5.h,),
                  Text("SAR 50000.00"),
                  SizedBox(height: 5.h,),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
