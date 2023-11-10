import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../../Model/model.dart';
import '../../../product_details/product_det_view.dart';

class DailyFeatures extends StatefulWidget {
  const DailyFeatures({super.key});

  @override
  State<DailyFeatures> createState() => _DailyFeaturesState();
}

class _DailyFeaturesState extends State<DailyFeatures> {
  @override
  Widget build(BuildContext context) {
    var jsonmod = Provider.of<JsonModel>(context);
    dynamic flash = [jsonmod.headphone,jsonmod.keyboard,jsonmod.gamingchair];
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(15),
      height: 150.h,
      color: Colors.grey[300],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Daily Features"),
          SizedBox(height: 10.h,),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    height: 90.h,
                    width: 70.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffd81d4c),
                    ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Hot Sales",style: TextStyle(color: Colors.white),),
                          Text("50% OFF",style: TextStyle(color: Colors.white),)
                        ],
                      ),
                  ),
                ],
              ),
           SizedBox(
             width: 10.w,
           ),
           Container(
             height: 90.h,
             width: MediaQuery.sizeOf(context).width/1.6,
             child: ListView.builder(
                 physics: ScrollPhysics(),
                 scrollDirection: Axis.horizontal,
               shrinkWrap: true,
               itemCount: 3,
               itemBuilder: (context,index) {
                 dynamic src = flash[index];
                 return GestureDetector(
                   onTap: () {
                     Navigator.of(context).push(
                       MaterialPageRoute(
                         builder: (context) =>
                             Pro_Det(id: src[0]["id"], src: src,),
                       ),
                     );
                   },
                   child: Container(
                     margin: EdgeInsets.only(right: 10.w),
                     child: Column(
                       children: [
                         Container(
                           height: 70.h,
                           width: 70.w,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(5),
                             color: Colors.white,
                           ),
                           child: Image.network("${src[0]["img"]}"),
                         ),
                         Center(child: Text("${src[0]["price"]}", style: TextStyle(
                             color: Colors.black),))
                       ],
                     ),
                   ),
                 );
               }
    ),
           )
            ],
          )
        ],
      ),
    );
  }
}
