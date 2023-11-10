import 'account.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';




class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    var navCon = Provider.of<NavCon>(context);
    var a = Provider.of<accpro>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title:Text(
              "Account",
        ),
        backgroundColor: Colors.grey[200],
        leading: BackButton(
          onPressed: (){
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => MainPage(),
              ),
              ModalRoute.withName('MainPage'),);
            navCon.popHome();
          },
        ),
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
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    height: 200.h,
                    color: Colors.white,
                  ),

              Container(
                margin: EdgeInsets.only(top: 40.h),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('lib/assets/ava.png'),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 130.h),
                child: Text("${a.name[0]}",style: TextStyle( fontSize: 23,color: Colors.black)),
              ),
              Container(
                margin: EdgeInsets.only(top: 160.h),
                child: Text("${a.name[1]}",style: TextStyle( fontSize: 17,color: Colors.black)),
              )
            ]
            ),
            Container(
              height: 20.h,
             color: Colors.grey[200],
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: a.list.length,
                itemBuilder: (context, index) {
                  return Container(
                      margin: EdgeInsets.only( top: 10.h, bottom: 10.h,left: 20.w,right: 20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: 40.h,
                              child: Row(
                                children: [
                                  Container(
                                      height: 30.h,
                                      width: 30.w,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20.r),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.shade200,
                                            blurRadius: 1,
                                            offset: Offset(
                                              0,
                                              10
                                            ),
                                          )
                                        ],
                                      ),
                                      child: Icon(a.list[index]["icon"],size: 30,color:a.colour[index])),
                                  SizedBox(width: 20.w, ),
                                  Text("${a.list[index]["title"]}",style: TextStyle( fontSize: 21),)
                                ],
                              )),
                          Container(
                            margin: EdgeInsets.only( top: 20, bottom: 10),
                            height: 10.h,

                          )


                        ],
                      ));
                }

            ),
          ],
        ),
      ),

    );
  }
}

