import 'package:flutter/cupertino.dart';

class CheckCon extends ChangeNotifier{
  dynamic a = [];

  int procount =0;
  int lcount =0;
  dynamic lastitem=0;
  dynamic b =[];
  dynamic presschk=[];
  dynamic cartid = [];
  dynamic cartsrc = [];
  dynamic removeID = [];
  dynamic remSrc=[];
  allAddlist(){
    for(int i=0; i< cartid.length ; i++){
      removeID.add(i);
    }
    notifyListeners();
  }
  clearlist (){
    removeID.clear();
    remSrc.clear();
    notifyListeners();
  }
  remTemp(src,value){
    removeID.add(value);
    remSrc.add(src);
    notifyListeners();
  }
  remTemprem(src,value){
    removeID.remove(value);
    remSrc.remove(src);
    notifyListeners();
  }

  void addVal(src,index){
    src[index]["cart"]++;
    notifyListeners();
  }
  void removeVal(src,index){
    src[index]["cart"]--;
    notifyListeners();
  }
  void addbuy(src,id){
    cartid.add(id);
    cartsrc.add(src);
    notifyListeners();
  }
  void changebuy(src,index,value){
    src[index]["cart"] = value;
    notifyListeners();
  }
  void removebuy(index){
    cartid.removeAt(index);
    cartsrc.removeAt(index);
    notifyListeners();
  }
void deletechk(){
  for(int i=0; i < removeID.length ; i++ ){
    removebuy(removeID[i]);
  }
  notifyListeners();
}

}
