import "package:flutter/material.dart";

class WishCon extends ChangeNotifier{
  dynamic wishID = [];
  dynamic srclist = [];

  addWish(src,value){
    wishID.add(value);
    srclist.add(src);
    notifyListeners();
  }
  removeWish(src,value){
    wishID.remove(value);
    srclist.remove(src);
    notifyListeners();
  }
  removeWishDex(src,ind,value){
    wishID.removeAt(value);
    srclist.removeAt(value);
    src[ind]["isFavourite"] = false;
    notifyListeners();
  }
  checkWish(src,ind){
    if(src[ind]["isFavourite"]){
      src[ind]["isFavourite"] = false;
      removeWish(src,src[ind]["id"]);
    }
    else{
      src[ind]["isFavourite"] = true;
      addWish(src,src[ind]["id"]);
    }
    notifyListeners();
  }
}