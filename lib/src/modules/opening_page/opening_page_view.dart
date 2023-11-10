import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../main.dart';

class OpPage extends StatefulWidget {
  const OpPage({super.key});

  @override
  State<OpPage> createState() => _OpPageState();
}

class _OpPageState extends State<OpPage> {
  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    var pages = [
      {
        "img":"lib/assets/op_pic/pic_1.jpg",
        "title":"Gaming Collection",
        "des":"Zak can be customized and used for many niches. The vast possiblities of this templaye makes it multi purpose."
      },
      {
        "img":"lib/assets/op_pic/pic_2.jpg",
        "title":"Home Decoration",
        "des":"Zak can be customized and used for many niches. The vast possiblities of this templaye makes it multi purpose."
      },
      {
        "img":"lib/assets/op_pic/pic_3.jpg",
        "title":"G11 gaming zone",
        "des":"Zak can be customized and used for many niches. The vast possiblities of this templaye makes it multi purpose."
      },
    ];
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height,
            child:PageView.builder(
                controller: controller,
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    height: MediaQuery.sizeOf(context).height,
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.sizeOf(context).height/2,
                          width: MediaQuery.sizeOf(context).width,
                          child: Image.asset("${pages[index]["img"]}",fit: BoxFit.cover,),
                        ),

                        Container(
                          height: MediaQuery.sizeOf(context).height/2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    margin: EdgeInsets.all(10.sp),
                                    child: Text("${pages[index]["title"]}",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 16.sp),)),
                                Container(
                                    width: 300.w,
                                    child: Text("${pages[index]["des"]}",textAlign: TextAlign.center,)),

                              ],
                            ),

                        ),

                      ],
                    ),
                  );
                }),
          ),
          Positioned(
            bottom: 50.h,
            child: SmoothPageIndicator(
                controller: controller, // PageController
                count:  3,
                effect:  CustomizableEffect(
                  spacing:  10.w,
                  dotDecoration:DotDecoration(
                    width: 6,
                    height: 6,
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),

                  activeDotDecoration:   DotDecoration(
                      width: 6,
                      height: 6,
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                      dotBorder: DotBorder(
                          padding: 5,
                          width: 2,
                          color: Colors.blue.shade900
                      )
                  ),
                ),  // your preferred effect
                onDotClicked: (index){
                  setState(() {
                  });

                }
            ),
          ),
          Positioned(
            bottom: 30.h,
              right: 30.w,
              child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => MainPage(),
                      ),
                      ModalRoute.withName('MainPage'),);
                  },
                  child: Text("SKIP"))),
          Positioned(
              bottom: 10.h,
              child: Container(
            height: 3.h,
                width: 150.w,
                color: Colors.brown.shade500,
          ))
        ],
      ),
    );
  }
}
