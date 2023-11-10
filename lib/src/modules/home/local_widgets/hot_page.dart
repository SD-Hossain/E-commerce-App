import 'hot_page_widget/Pamplate.dart';
import 'hot_page_widget/brands.dart';
import 'hot_page_widget/coupon_row.dart';
import 'hot_page_widget/daily_feature.dart';
import 'hot_page_widget/flash_deals.dart';
import 'hot_page_widget/hot_category.dart';
import 'package:flutter/material.dart';
import 'hot_page_widget/best_sale.dart';


class HotBar extends StatefulWidget {
  const HotBar({super.key});

  @override
  State<HotBar> createState() => _HotBarState();
}

class _HotBarState extends State<HotBar> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:Colors.grey[200] ,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Pamplate(),
            CouponRow(),
            FlashDeals(),
            DailyFeatures(),
            HotCategories(),
            Brands(),
            BestSale()

      ]
    )
      )
    );
  }
}
