import "package:flutter/material.dart";

import "../modules/account/account_view.dart";
import "../modules/cart/cart_view.dart";
import "../modules/categories/categories_view.dart";
import "../modules/home/home_view.dart";
import "../modules/wishlist/wish_view.dart";

class NavCon extends ChangeNotifier{
  int currentTab = 2;
  final pages = {Categories(), Wishlist(), Home(), Cart(), Account()};

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentPage = Home();
  popHome(){
    currentTab = 2;
    notifyListeners();
  }
}