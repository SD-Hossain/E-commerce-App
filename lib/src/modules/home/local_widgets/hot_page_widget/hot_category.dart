import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../Model/model.dart';
import '../../../product_details/product_det_view.dart';

class HotCategories extends StatefulWidget {
  const HotCategories({super.key});

  @override
  State<HotCategories> createState() => _HotCategoriesState();
}

class _HotCategoriesState extends State<HotCategories> {
  @override
  Widget build(BuildContext context) {
    var jsonmod = Provider.of<JsonModel>(context);
    dynamic flash = [jsonmod.headphone,jsonmod.keyboard,jsonmod.mouse,jsonmod.gamingchair];
    dynamic colour = [Color(0xffd81d4c),Colors.green,Colors.blue.shade900,Colors.black];
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(15),
      height: 140,
      color: Colors.pink[50],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hot Categories"),
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
                                height: 55,
                                child: Image.network("${src[0]["img"]}"),
                              ),
                              Container(
                                  height: 25,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: colour[index]
                                  ),
                                  child: Center(child: Text("${src[0]["price"]}",style: TextStyle(color: Colors.white),)))
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
