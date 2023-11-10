import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../../../Model/model.dart';
import '../../../product_details/product_det_view.dart';
class FlashDeals extends StatefulWidget {
  const FlashDeals({super.key});

  @override
  State<FlashDeals> createState() => _FlashDealsState();
}

class _FlashDealsState extends State<FlashDeals> {

  @override
  Widget build(BuildContext context) {
    var jsonmod = Provider.of<JsonModel>(context);
    dynamic flash = [jsonmod.headphone,jsonmod.keyboard,jsonmod.mouse,jsonmod.gamingchair];
    dynamic colour = [Color(0xffd81d4c),Colors.green,Colors.blue.shade900,Colors.black];
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(15),
      height: 150.h,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Flash Deals"),
              Row(
                children: [
                  Icon(Icons.electric_bolt,color: Colors.pinkAccent,),
                  Text("68:45:56",style: TextStyle(color: Colors.pinkAccent),)
                ],
              )
            ],
          ),
          SizedBox(height: 10.h,),
        Container(
          height: 80.h,
          child: ListView.builder(
            itemExtent: 90,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context,index){
              dynamic src = flash[index];
            return GestureDetector(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Pro_Det(id: src[0]["id"], src: src,),
                  ),
                );
              },
              child: Column(
                children: [
                  Container(
                    height: 80.h,
                    width: 85.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 85.w,
                          height: 55.h,
                          child: Image.network("${src[0]["img"]}",fit: BoxFit.cover,),
                        ),
                        Container(
                            height: 25.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: colour[index]
                            ),
                            child: Center(
                                child: Text("${src[0]["price"]}",style: TextStyle(color: Colors.white),)))
                      ],
                    ),

                  ),
                ],
              ),
            );
          }),
        )
        ],
      ),
    );
  }
}
