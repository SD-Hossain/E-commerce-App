import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../home/local_widgets/hot_page_widget/bottom_sheet.dart';
import '../../../controller/wishlist_controller.dart';

class BottomBar extends StatefulWidget {
   BottomBar({super.key,required this.src,required this.proind});
final src;
final proind;
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    var wishCon = Provider.of<WishCon>(context);
    return BottomAppBar(
      color: Colors.white,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: (){
                wishCon.checkWish(widget.src, widget.proind);
              },
              child:
              widget.src[widget.proind]["isFavourite"] ? Icon(Icons.favorite,size: 30.sp,color: Color(0xffd81d4c),):
              Icon(Icons.favorite_border_rounded,size: 30.sp,color: Colors.grey[700],),
            ),
            Container(
            height: 35.h,
            width: MediaQuery.sizeOf(context).width/3.4,
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(color: Color(0xffd81d4c),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width:MediaQuery.sizeOf(context).width/5,
                   height: 35.h,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.only(
                           topLeft: Radius.circular(5),
                           bottomLeft: Radius.circular(5)
                       ),
                     color: Colors.white,
                   ),
                    child: Center(child: Text("My Cart",style: TextStyle(color: Color(0xffd81d4c)),))
                ),
                Container(
                decoration: BoxDecoration(color: Colors.red[100],
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5),
                  bottomRight: Radius.circular(5)
                )
                ),
                  width:MediaQuery.sizeOf(context).width/12.1, child: Center(child: Text("${widget.src[widget.proind]["cart"]}"),),
                )
              ],
            ),),
            GestureDetector(
              onTap: (){
                BottomShot().settingModalBottomSheet(context, widget.src, widget.proind);
              },
              child: Container(
                decoration: BoxDecoration(color: Color(0xffd81d4c),
                  borderRadius: BorderRadius.circular(5),
                ),
                height: 35.h,
                width: MediaQuery.sizeOf(context).width/3.4,
                child: Center(child: Text("Buy Now",style: TextStyle(color: Colors.white),))
              ),
            ),
          ],
        ),
      ),

    );
  }
}
