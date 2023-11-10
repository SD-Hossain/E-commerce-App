import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'bottom_sheet.dart';
import '../../../../../Model/model.dart';
import '../../../product_details/product_det_view.dart';

class BestSale extends StatefulWidget {
  const BestSale({super.key});

  @override
  State<BestSale> createState() => _BestSaleState();
}

class _BestSaleState extends State<BestSale> {
  @override
  Widget build(BuildContext context) {

    var jsonmod = Provider.of<JsonModel>(context);
    dynamic flash = [jsonmod.headphone,jsonmod.keyboard,jsonmod.gamingchair,jsonmod.casing,jsonmod.mouse,jsonmod.gamingpc];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: EdgeInsets.all(10),
            child: Text("Best Sale Product")),
        SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            child: GridView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 200.h,
                  crossAxisCount: 2, crossAxisSpacing: 5.w,mainAxisSpacing: 5.w),
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                dynamic src = flash[index];
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
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(top: 5.h,bottom: 5.h),
                            height: 100.h,
                            child: Image.network("${src[0]["img"]}",fit: BoxFit.cover,),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left:5.w,right: 5.w),
                          child: Text('${src[0]["name"]}',maxLines: 2,),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(left:5.w,right: 5.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('${src[0]["price"]} SAR', style: TextStyle(color: Color(0xffd81d4c)),),
                              GestureDetector(
                                  onTap: (){
                                   BottomShot().settingModalBottomSheet(context, src, 0);
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
          ),
        ),
      ],
    );
  }
}
