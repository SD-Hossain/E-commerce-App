import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../Model/model.dart';
import '../../product_details/product_det_view.dart';
import 'hot_page_widget/bottom_sheet.dart';

class PhnAcc extends StatefulWidget {
  const PhnAcc({super.key});

  @override
  State<PhnAcc> createState() => _PhnAccState();
}

class _PhnAccState extends State<PhnAcc> {
  @override
  Widget build(BuildContext context) {
    var jsonmodel = Provider.of<JsonModel>(context);
    var src = jsonmodel.keyboard;
    return  SingleChildScrollView(
      child: GridView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 250.h,
            crossAxisCount: 2,crossAxisSpacing: 5.w,mainAxisSpacing: 5.w),
        itemCount: jsonmodel.keyboard.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      Pro_Det(id: src[index]["id"], src: src,),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.all(5),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 5.h,bottom: 5.h),
                      height: 150.h ,
                      child: Image.network("${src[index]["img"]}"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left:5.w,right: 5.w),
                    child: Text('${src[index]["name"]}',maxLines: 2,),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(left:5.w,right: 5.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('${src[index]["price"]} SAR', style: TextStyle(color: Color(0xffd81d4c)),),
                        GestureDetector(
                            onTap: (){
                              BottomShot().settingModalBottomSheet(context, src, index);
                            },
                            child: Icon(Icons.shopping_cart_outlined,))
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
