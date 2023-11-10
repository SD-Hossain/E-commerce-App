import 'local_widgets/comp_off_page.dart';
import 'local_widgets/gam_pc_page.dart';
import 'local_widgets/phn_acc_page.dart';
import 'local_widgets/toy_page.dart';
import 'package:flutter/material.dart';
import 'local_widgets/hot_page.dart';

class Home extends StatefulWidget {

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget _searchBar() {
    return Container(
      height: 60,
      padding: EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(55),
        color: Colors.grey[300],
      ),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white10)),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white10)),
              hintText: "What would you like to buy?",
              hintStyle: TextStyle(color: Colors.grey),
              labelStyle: TextStyle(color: Colors.black)),
        ),
      ),
    );
  }
  Widget _tabbar(){
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor:Colors.grey[200] ,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TabBar(
                labelColor: Color(0xffd81d4c) ,
                indicatorColor: Color(0xffd81d4c) ,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 5,
                isScrollable: true,
                tabs: [
                  Tab(text:"Hot"),
                  Tab(text:"Computer & Office"),
                  Tab(text:"Phone Accessories"),
                  Tab(text:"Gaming PC"),
                  Tab(text:"Toys"),
                ],
              ),
            ],
          ),

        ),
        body: TabBarView(
          children: [
            HotBar(),
            CompOff(),
            PhnAcc(),
            GamingPC(),
            Toys()
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[200],
          toolbarHeight: 85,
          title: _searchBar(),
        ),
        drawer: Drawer(),
        backgroundColor: Colors.grey[100],

        body: _tabbar()

    );
  }
}
