import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'rating_calc.dart';

class DesSec extends StatefulWidget {
 DesSec({super.key, required this.src, required this.proind});
final src;
 final proind;
  @override
  State<DesSec> createState() => _DesSecState();
}

class _DesSecState extends State<DesSec> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(20),
          height: 50.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text("${widget.src[widget.proind]["price"]}.00 SAR",style: TextStyle(color: Colors.red,fontSize: 18.sp),),
                    Row(
                      children: [
                        Text("460000.00",style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text("-46%",style: TextStyle(color: Colors.grey[600]),)
                      ],
                    )
                  ]
              ),
              Icon(Icons.share,size: 25.sp,)
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(20),
          height: 100.h,
          child: Column(
            children: [
              Text("${widget.src[widget.proind]["des"]}",maxLines: 3,),
              SizedBox(height: 10.h,),
              Row(
                children: [
                  RatingBarIndicator(
                    rating: RatingCalc(src: widget.src, proind: widget.proind,).AvgRate(),
                    itemBuilder: (context,index) => Icon(
                      Icons.star,
                      color: Color(0xffd81d4c),
                    ),
                    itemCount: 5,
                    itemSize: 20,
                    direction: Axis.horizontal,
                  ) ,
                  SizedBox(width: 5.w,),
                  Text("${RatingCalc(src: widget.src, proind: widget.proind,).AvgRate()}",style: TextStyle(color: Colors.grey),)
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
