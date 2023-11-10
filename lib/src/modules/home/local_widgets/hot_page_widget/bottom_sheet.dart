import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../Checkout/checkout_view.dart';
import '../../../../controller/checkout_controller.dart';

class BottomShot   {
  mys(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content:Text(message),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.only(bottom: 50.0),
          backgroundColor: Colors.green,
        )
    );
  }
  void settingModalBottomSheet(context,src,index){
    var checkCon = Provider.of<CheckCon>(context, listen: false);
    var count = src[index]["cart"];
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc){
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState)
            { return SizedBox(
              height: MediaQuery.sizeOf(context).height/3,
              child: Scaffold(
                body: Container(
                  padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)
                  ),
                ),
                height: MediaQuery.sizeOf(context).height/3,

                child: new Wrap(
                  children: <Widget>[
                Container(
                height: 90.h,
                    margin: EdgeInsets.all(10),
                    color: Colors.white,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 50.w,
                            height: 70.h,
                            child: Image.network("${src[index]["img"]}",fit: BoxFit.cover,),
                          ),
                          SizedBox( width: 20.w,),
                          Container(
                            width: MediaQuery.sizeOf(context).width/1.5,
                            height: 70.h,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("${src[index]["name"]}",style: TextStyle(color: Colors.grey),),
                                Spacer(),
                                Row(
                                  children: [
                                    Text("${src[index]["price"]}",style: TextStyle(color: Color(0xffd81d4c))),
                                    Spacer(),
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap: (){
                                            setState(() {
                                              count++;
                                            });
                                          },
                                          child: Container(
                                            height: 30.h,
                                            width: MediaQuery.sizeOf(context).width/10,
                                            color: Colors.grey[400],
                                            child: Center(child: Icon(Icons.add)),
                                          ),
                                        ),
                                        Container(
                                          height: 30.h,
                                          width: MediaQuery.sizeOf(context).width/10,
                                          child: Center(child: Text("$count")),
                                        ),
                                        GestureDetector(
                                          onTap: (){
                                            if(count>1){
                                            setState(() {
                                              count--;
                                            });}
                                            },
                                          child: Container(
                                            height: 30.h,
                                            width: MediaQuery.sizeOf(context).width/10,
                                            color: count==1?Colors.grey[100]: Colors.grey[400],
                                            child: Center(child: Icon(Icons.remove,color:count==1?Colors.grey[400]: Colors.black ,)),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ]
                    )
                ),
                    SizedBox(height: 20.h,),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: (){
                              if (!checkCon.cartid.contains(src[index]["id"])){
                                checkCon.addbuy(src, src[index]["id"]);
                              }
                              setState(() {
                                src[index]["cart"]= count;
                              });
                              mys("Added to Cart",context);
                            },
                            child: Container(
                              height: 40.h,
                              width: MediaQuery.sizeOf(context).width/2.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[400],
                              ),
                              child:  Center
                                (child: Text("Add to Cart",style: TextStyle(color: Colors.black),)),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      CheckPage(),
                                ),
                              );
                            },
                            child: Container(
                              height: 40.h,
                              width: MediaQuery.sizeOf(context).width/2.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffd81d4c),
                              ),
                              child: Center
                                (child: Text("Check Out",style: TextStyle(color: Colors.white),)),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
          ),
              ),
            );});
        }
    );
  }
}
