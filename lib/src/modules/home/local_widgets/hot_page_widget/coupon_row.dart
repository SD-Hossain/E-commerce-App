import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CouponRow extends StatefulWidget {
  const CouponRow({super.key});

  @override
  State<CouponRow> createState() => _CouponRowState();
}

class _CouponRowState extends State<CouponRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      color: Colors.white,
      height: 140.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                height: 80.h,
                width: MediaQuery.sizeOf(context).width/5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.pinkAccent,
                        Colors.red,
                      ],
                    )
                ),
                child: Center(child: Container(
                    height: 35.h,
                    width: MediaQuery.sizeOf(context).width/8,
                    child: Image.asset("lib/assets/coupon_logo/coupon.png"))),
              ),
              Text("Coupons")
            ],
          ),
          Column(
            children: [
              Container(
                height: 80.h,
                width: MediaQuery.sizeOf(context).width/5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.lightBlue,
                        Colors.blue,
                      ],
                    )
                ),
                child: Center(child: Container(
                    height: 35.h,
                    width: MediaQuery.sizeOf(context).width/8,
                    child: Image.asset("lib/assets/coupon_logo/gift_card.png"))),
              ),
              Text("Gift Cards")
            ],
          ),
          Column(
            children: [
              Container(
                height: 80.h,
                width: MediaQuery.sizeOf(context).width/5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.red,
                        Colors.orange,
                      ],
                    )
                ),
                child: Center(child: Container(
                    height: 35.h,
                    width: MediaQuery.sizeOf(context).width/8,
                    child: Image.asset("lib/assets/coupon_logo/shopping_bag.png"))),
              ),
              Text("Slash")
            ],
          ),
          Column(
            children: [
              Container(
                height: 80.h,
                width: MediaQuery.sizeOf(context).width/5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.lightBlueAccent,
                        Colors.lightBlueAccent,
                      ],
                    )
                ),
                child: Center(child: Container(
                    height: 35.h,
                    width: MediaQuery.sizeOf(context).width/8,
                    child: Image.asset("lib/assets/coupon_logo/setting.png"))),
              ),
              Text("PC Assemble")
            ],
          ),
        ],
      ),

    );
  }
}
