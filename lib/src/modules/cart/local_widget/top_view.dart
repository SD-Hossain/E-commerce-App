import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../controller/checkout_controller.dart';
import '../../../controller/nav_controller.dart';

class TopCart extends StatefulWidget {
   TopCart({super.key,required this.listind});
final listind;
  @override
  State<TopCart> createState() => _TopCartState();
}

class _TopCartState extends State<TopCart> {
  @override
  Widget build(BuildContext context) {
    var checkCon = Provider.of<CheckCon>(context);
    return Container(
      height: MediaQuery.sizeOf(context).height,
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.sizeOf(context).height/1.5,
          child: ListView.builder(
              physics: ScrollPhysics(),
              itemCount:checkCon.cartid.length ,
              shrinkWrap: true,
              itemBuilder: (context, index){
                checkCon.cartsrc[index].asMap().forEach((ind,value)=> {
                  if (checkCon.cartsrc[index][ind]["id"]== checkCon.cartid[index]){
                    widget.listind[index] = ind
                  },
                }
                );
                return Container(
                    height: 90.h,
                    margin: EdgeInsets.all(10),
                    color: Colors.white,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 50.w,
                            height: 70.h,
                            child: Image.network("${checkCon.cartsrc[index][widget.listind[index]]["img"]}",fit: BoxFit.cover,),
                          ),
                          SizedBox( width: 20.w,),
                          Container(
                            width: MediaQuery.sizeOf(context).width/1.4,
                            height: 90.h,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        width:MediaQuery.sizeOf(context).width/2,
                                        child: Text("${checkCon.cartsrc[index][widget.listind[index]]["name"]}",maxLines: 2,style: TextStyle(color: Colors.grey),)),

                                    GestureDetector(
                                      onTap: (){
                                        if( !checkCon.removeID.contains(index)){
                                          checkCon.remTemp(checkCon.cartsrc[index],index);}
                                        else{
                                          checkCon.remTemprem(checkCon.cartsrc[index],index);
                                        }
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30.r),
                                          border: Border.all(
                                              width: 2.w,
                                              color: checkCon.removeID.contains(index)?Color(0xffd81d4c):Colors.grey
                                          ),
                                          color: checkCon.removeID.contains(index)?Color(0xffd81d4c): Colors.white,
                                        ),
                                        height: 30.h,
                                        width: 30.w,
                                        child: Center(
                                            child: Icon(Icons.done, color: Colors.white,)),
                                      ),
                                    )
                                  ],
                                ),
                                Spacer(),
                                Row(
                                  children: [
                                    Text("${checkCon.cartsrc[index][widget.listind[index]]["price"]}.00 SAR",style: TextStyle(color: Color(0xffd81d4c))),
                                    Spacer(),
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap: (){
                                            checkCon.addVal(checkCon.cartsrc[index], widget.listind[index]);
                                          },
                                          child: Container(
                                            height: 30.h,
                                            width: 30.w,
                                            color: Colors.grey[200],
                                            child: Center(child: Icon(Icons.add)),
                                          ),
                                        ),
                                        Container(
                                          height: 30.h,
                                          width: 30.w,
                                          child: Center(child: Text("${checkCon.cartsrc[index][widget.listind[index]]["cart"]}")),
                                        ),
                                        GestureDetector(
                                          onTap: (){
                                            if(checkCon.cartsrc[index][widget.listind[index]]["cart"]==1){
                                              checkCon.removebuy(index);
                                            }
                                            else {
                                              checkCon.removeVal(checkCon.cartsrc[index], widget.listind[index]);
                                            }

                                          },
                                          child: Container(
                                            height: 30.h,
                                            width: 30.w,
                                            color:  Colors.grey[200],
                                            child: Center(child: Icon(Icons.remove)),
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
                );

              }

          ),
        ),
      ),
    );
  }
}
