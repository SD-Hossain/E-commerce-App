import 'package:ecomm_app/src/controller/account_controller.dart';
import 'package:ecomm_app/src/controller/checkout_controller.dart';
import 'package:ecomm_app/src/controller/nav_controller.dart';
import 'package:ecomm_app/src/controller/wishlist_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'Model/model.dart';
import 'src/global_widget/bottom_nav_bar.dart';
import 'src/modules/account/account_view.dart';
import 'src/modules/cart/cart_view.dart';
import 'src/modules/categories/categories_view.dart';
import 'src/modules/home/home_view.dart';
import 'src/modules/opening_page/opening_page_view.dart';
import 'src/modules/splash_screen/splash_screen_view.dart';
import 'src/modules/wishlist/wish_view.dart';

main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => JsonModel()),
        ChangeNotifierProvider(create: (_) => WishCon()),
        ChangeNotifierProvider(create: (_) => CheckCon()),
        ChangeNotifierProvider(create: (_) => NavCon()),
        ChangeNotifierProvider(create: (_) => accpro()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 650),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            debugShowCheckedModeBanner: false,
            home: SplashScreen(),
          );
        });
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    var navCon = Provider.of<NavCon>(context);
    return Scaffold(

      body: PageStorage(
        child: navCon.currentPage,
        bucket: navCon.bucket,
      ),
      floatingActionButton: Visibility(
        visible: MediaQuery.of(context).viewInsets.bottom == 0.0,
        child: FloatingActionButton(
          shape: CircleBorder(),
          onPressed: () {
            setState(() {
              navCon.currentPage = Home();
              navCon.currentTab = 2;
            });
          },
          child: CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("lib/assets/logo/navlogo.png"),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
