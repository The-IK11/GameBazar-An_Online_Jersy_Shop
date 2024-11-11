import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamebazar/screens/cart_screen.dart';
import 'package:gamebazar/screens/favorite_screen.dart';
import 'package:gamebazar/screens/home_page.dart';
import 'package:gamebazar/screens/profile_screen.dart';

class Bottom_Nav_Bar extends StatefulWidget {
  const Bottom_Nav_Bar({super.key});

  @override
  State<Bottom_Nav_Bar> createState() => _Bottom_Nav_Bar();
}

class _Bottom_Nav_Bar extends State<Bottom_Nav_Bar> {
  int page_index = 0;
  List<Widget> pages = [
    HomePage(),
    CartScreen(),
    FavoriteScreen(),
    ProfileScreen()


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},elevation: 7.0,backgroundColor: Colors.deepPurple,
        child: Icon(
          CupertinoIcons.qrcode,
          color: Colors.white,
        ),
      shape: CircleBorder(),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: [
            CupertinoIcons.home,
            CupertinoIcons.heart_fill,
            CupertinoIcons.cart,
            CupertinoIcons.profile_circled,
          ],
          activeIndex: page_index,
          inactiveColor: Colors.white,
          activeColor: Colors.deepPurple,
          backgroundColor: Colors.deepPurple.withOpacity(0.2),
          notchSmoothness: NotchSmoothness.sharpEdge,
          leftCornerRadius: 11,
          iconSize: 26,
          elevation: 15,
          rightCornerRadius: 11,
          gapLocation: GapLocation.center,
          onTap: (int index){
            setState(() {
              page_index=index;
            });
          }),
      body: AnimatedSwitcher(
           duration: Duration(milliseconds: 800),
          transitionBuilder: (Widget child,Animation<double>animation){
            return Stack(
              children: [
                SlideTransition(position: Tween<Offset>(
                  begin:Offset(0.2, 0.0) ,
                  end: Offset(0.0,0.0),
                ).animate(animation),
                child:FadeTransition(opacity: animation,child: ScaleTransition(scale: animation,child: child,),) ,
                ),
              ],
            );
          },

          child: pages[page_index]),
    );
  }
}
