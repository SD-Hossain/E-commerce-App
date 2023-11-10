import 'package:ecomm_app/src/controller/nav_controller.dart';
import 'package:ecomm_app/src/modules/categories/categories_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import "../../main.dart";
import '../modules/account/account_view.dart';
import '../modules/cart/cart_view.dart';
import '../modules/wishlist/wish_view.dart';
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    var navCon = Provider.of<NavCon>(context);
    return BottomAppBar(
      surfaceTintColor: Colors.white,
      shape: CircularNotchedRectangle(),
      notchMargin: 20,
      child: Container(
        margin: EdgeInsets.only(left: 8.w),
        height: 80.h,
        width:MediaQuery.sizeOf(context).width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width/2.6,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              Categories(),
                        ),
                      );
                      setState(() {
                        navCon.currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.grid_view,
                          size: 20.r,
                          color: navCon.currentTab == 0
                              ? Color(0xffd81d4c)
                              : Colors.black54,
                        ),
                        Text(
                          "Category", style:
                        Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: navCon.currentTab == 0
                              ? Color(0xffd81d4c)
                              : Colors.black54,
                        ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: MediaQuery.sizeOf(context).width/5,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              Wishlist(),
                        ),
                      );
                      setState(() {
                        navCon.currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite_border_rounded,
                          size: 20.r,
                          color: navCon.currentTab == 1
                              ? Color(0xffd81d4c)
                              : Colors.black54,
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width/8,
                          child: Text(
                            "Wishlist",
                            style:
                            Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: navCon.currentTab == 1
                                  ? Color(0xffd81d4c)
                                  : Colors.black54,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width/2.4,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    minWidth: MediaQuery.sizeOf(context).width/5,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              Cart(),
                        ),
                      );
                      setState(() {
                        navCon.currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shopping_cart_outlined,
                          size: 20.r,
                          color: navCon.currentTab == 3
                              ? Color(0xffd81d4c)
                              : Colors.black54,
                        ),
                        Text(
                          "Cart",
                          style:  Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: navCon.currentTab == 3
                                ? Color(0xffd81d4c)
                                : Colors.black54,
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 10.w,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              Account(),
                        ),
                      );
                      setState(() {
                        navCon.currentTab = 4;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_outlined,
                          size: 20.r,
                          color: navCon.currentTab == 4
                              ? Color(0xffd81d4c)
                              : Colors.black54,
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width/8.5,
                          child: Text(
                            "Account",
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: navCon.currentTab == 4
                                  ? Color(0xffd81d4c)
                                  : Colors.black54,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
