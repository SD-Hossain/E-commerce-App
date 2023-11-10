import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../../Model/model.dart';
import '../../../product_details/product_det_view.dart';

class Brands extends StatefulWidget {
  const Brands({super.key});

  @override
  State<Brands> createState() => _BrandsState();
}

class _BrandsState extends State<Brands> {
  @override
  Widget build(BuildContext context) {
    var jsonmod = Provider.of<JsonModel>(context);
    dynamic flash = [jsonmod.gamingchair,jsonmod.keyboard,jsonmod.gamingpc,jsonmod.headphone];
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(15),
      height: 150,
      color: Colors.grey[300],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Brands"),
              Text("View More",style: TextStyle(color: Colors.grey),)
            ],
          ),
          SizedBox(height: 10,),
          Container(
            height: 80,
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
                          height: 80,
                          width: 85,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: 85,
                                height: 55,
                                child: Image.network("${src[0]["img"]}",fit: BoxFit.cover,),
                              ),
                              Container(
                                  height: 20.h,
                                  width: 55,
                                  child: Image.network("${src[0]["brand_logo"]}",fit: BoxFit.fitWidth),)
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
