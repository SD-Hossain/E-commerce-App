

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';




import '../Checkout/checkout_view.dart';
import 'cart.dart';
class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    var navCon = Provider.of<NavCon>(context);
    var checkCon = Provider.of<CheckCon>(context);
    dynamic listind =[];
    for(int i=0;i<checkCon.cartid.length;i++){
      listind.add(0);
    };
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
        floatingActionButton: Visibility(
          visible: MediaQuery.of(context).viewInsets.bottom == 0.0,
          child: FloatingActionButton(
            shape: CircleBorder(),
            onPressed: () {
              navCon.popHome();
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) => MainPage(),
                ),
                ModalRoute.withName('MainPage'),);
            },
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("lib/assets/logo/navlogo.png"),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          appBar: AppBar(
            backgroundColor: Colors.grey[200],
            title: Text("Shopping Cart"),
              leading: BackButton(
                onPressed: (){
                  navCon.popHome();
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => MainPage(),
                    ),
                    ModalRoute.withName('MainPage'),);
                },
              ),
            actions: [

              GestureDetector(
                onTap: (){
                  AlertBoxHome().showMyDialog(context,checkCon);
                  },
                child: Container(
                    margin: EdgeInsets.only(right: 20.w),
                    child: Icon(Icons.delete)),
              )
            ],
          ),
        body:
          Stack(
            children: [
              TopCart(listind: listind),
              Positioned(
                  bottom: 20.h,
                  child: Container(
                height:MediaQuery.sizeOf(context).height/11,
                    padding: EdgeInsets.only(left: 20.w,right: 20.w),
                    width: MediaQuery.sizeOf(context).width,
                    color: Colors.white,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              onTap: (){
                                if(checkCon.cartid.length==checkCon.removeID.length){
                                  checkCon.clearlist();
                                }
                                else{
                                  checkCon.allAddlist();
                                }
                              },
                              child: Container(
                                height: 20.h,
                                width: 20.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: checkCon.cartid.length==checkCon.removeID.length && checkCon.cartid.length !=0 ?Color(0xffd81d4c):Colors.grey),
                               color: checkCon.cartid.length==checkCon.removeID.length && checkCon.cartid.length !=0? Color(0xffd81d4c):Colors.white
                                ),
                                child: Center(child: Icon(Icons.done,color: Colors.white,size: 10,)),
                              ),
                            ),
                            SizedBox(width: 3.w,),
                            Text("All",style: TextStyle(color: Colors.black),)
                          ],
                        ),
                        Row(
                          children: [
                            Text("Total:"),
                            SizedBox(width: 5.w,),
                            Text("SAR 20000.00", style: TextStyle(color: Color(0xffd81d4c)),)
                          ],
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
                          child: Container(height: 30.h,
                          width: MediaQuery.sizeOf(context).width/4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffd81d4c)
                          ),
                            child: Center(child: Text("Checkout",style: TextStyle(color: Colors.white),)),
                          ),
                        )
                      ],
                    ),
              ))
            ],
          )

    );
  }
}
