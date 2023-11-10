import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../Model/model.dart';

class Pamplate extends StatefulWidget {
  const Pamplate({super.key});

  @override
  State<Pamplate> createState() => _PamplateState();
}

class _PamplateState extends State<Pamplate> {
  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    var jpro = Provider.of<JsonModel>(context);
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          height: 250.h,
          child: PageView.builder(
              controller: controller,
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return  Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black,
                          Colors.grey.shade800,
                        ],
                      )
                  ),
                  margin: EdgeInsets.only(left: 10,top: 20,right: 10,bottom: 10),
                  padding: EdgeInsets.only(left: 30.w,right:20.w),
                  height: 250.h,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 110.h,
                        width: MediaQuery.sizeOf(context).width/2.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("2023 Newly",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            Text("Gaming Headset",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            Text("Wireless or Customize Drive",style: TextStyle(color: Colors.white,fontSize: 12),),
                            SizedBox(
                              height: 10.h,
                            ),
                            Container(
                              height: 30.h,
                              width: MediaQuery.sizeOf(context).width/4,
                              color: Colors.red,
                              child: Center(
                                child: Text("Shop Now",style: TextStyle(color: Colors.white),),
                              ),
                            )
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 70.r,
                        backgroundImage: NetworkImage('${jpro.headphone[0]["img"]}'),
                      )
                    ],
                  ),


                );
              }),
        ),

        Container(
          margin: EdgeInsets.only(bottom: 20),
          height: 20,
          width: 85,

          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Center(
            child: SmoothPageIndicator(
                controller: controller,  // PageController
                count:  6,
                effect:  ColorTransitionEffect(
                  spacing:  3.0,
                  dotWidth:  8.0,
                  dotHeight:  8.0,
                  dotColor:  Colors.white,
                  activeDotColor: Colors.red,
                ),  // your preferred effect
                onDotClicked: (index){
                  setState(() {
                  });

                }
            ),
          ),
        )
      ],
    );
  }
}
