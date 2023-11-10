
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'checkout.dart';

class CheckPage extends StatefulWidget {
  const CheckPage({super.key});

  @override
  State<CheckPage> createState() => _CheckPageState();
}

class _CheckPageState extends State<CheckPage> {
  @override
  Widget build(BuildContext context) {
    var checkCon = Provider.of<CheckCon>(context);
    dynamic listind =[];
    for(int i=0;i<checkCon.cartid.length;i++){
      listind.add(0);
    };
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Checkout Information"),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.grey[200],
      ),
      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopView(),
              ListView.builder(
                  physics: ScrollPhysics(),
                  itemCount:checkCon.cartid.length ,
                  shrinkWrap: true,
                  itemBuilder: (context, index){
                    checkCon.cartsrc[index].asMap().forEach((ind,value)=> {
                      if (checkCon.cartsrc[index][ind]["id"]== checkCon.cartid[index]){
                        listind[index] = ind
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
                        child: Image.network("${checkCon.cartsrc[index][listind[index]]["img"]}",fit: BoxFit.cover,),
                      ),
                        SizedBox( width: 20.w,),
                         Container(
                            width: MediaQuery.sizeOf(context).width/1.4,
                    height: 90.h,
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width:MediaQuery.sizeOf(context).width/2,
                          child: Text("${checkCon.cartsrc[index][listind[index]]["name"]}",maxLines: 2,style: TextStyle(color: Colors.grey),)),
                    SizedBox(height: 5.h,),
                      Text("45000.OOXAF X 1", style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 5.h,),
                      Text("${checkCon.cartsrc[index][listind[index]]["price"]}.00 SAR",style: TextStyle(color: Color(0xffd81d4c))),

                    ]

                    )

                         )

                        ]
                      )
                    ); } ),
           BottomView()
            ],
          )
      ),
      bottomNavigationBar: BottomAppBar(
        height: 110.h,
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Items: ${checkCon.cartid.length}"),
                Text("Total: SAR 50000.00")
              ],
            ),
            SizedBox(height: 10.h,),
            Container(
              height: 40.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffd81d4c),
              ),
              child: Center(child: Text("Place Order",style: TextStyle(color: Colors.white),)),
            )
          ],
        ),
      ),
    );
  }
}
