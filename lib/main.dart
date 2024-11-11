import"package:flutter/material.dart";
import "package:gamebazar/screens/add_user_address.dart";
import "package:gamebazar/screens/bottom_nav_bar/bottom_navigation_bar.dart";
import "package:gamebazar/screens/cart_screen.dart";
import "package:gamebazar/screens/favorite_screen.dart";
import "package:gamebazar/screens/home_page.dart";
import "package:gamebazar/screens/on_bording_introduction_screen/on_bording_screen.dart";
import "package:gamebazar/screens/order_confirm.dart";
import "package:gamebazar/screens/pay.dart";
import "package:gamebazar/screens/payment_success.dart";
import "package:gamebazar/screens/profile_screen.dart";
import "package:gamebazar/screens/splash_screen/splashscreen.dart";
void main(){
  runApp(const MyApp());
}
class MyApp  extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     theme: ThemeData(
      scaffoldBackgroundColor: Colors.white
     ),
     home:Splashscreen(),
    );
  }
}
