import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../main.dart';
import '../../controller/nav_controller.dart';
import '../../global_widget/bottom_nav_bar.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    var navCon = Provider.of<NavCon>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Category"),
      leading: BackButton(
        onPressed: (){
          navCon.popHome();
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => MainPage(),
            ),
            ModalRoute.withName('MainPage'),);
        },
      ),
      ),
      body: Container(
        height: 300,
        width: 300,
      ),
      bottomNavigationBar: BottomNavBar(),
      floatingActionButton: Visibility(
        visible: MediaQuery.of(context).viewInsets.bottom == 0.0,
        child: FloatingActionButton(
          shape: CircleBorder(),
          onPressed: () {
            navCon.popHome();
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => MainPage(),
              ),
              ModalRoute.withName('MainPage'),);
          },
          child: CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("lib/assets/logo/navlogo.png"),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}







