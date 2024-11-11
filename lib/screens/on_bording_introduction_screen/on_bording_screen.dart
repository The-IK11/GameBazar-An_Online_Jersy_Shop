import 'package:flutter/material.dart';
import 'package:gamebazar/screens/authentications_screens/login_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../bottom_nav_bar/bottom_navigation_bar.dart';

class OnBordingScreen extends StatefulWidget {
  const OnBordingScreen ({super.key});

  @override
  State<OnBordingScreen> createState() => _OnBordingScreen();
}

class _OnBordingScreen extends State<OnBordingScreen> {
  final _introKey=GlobalKey<IntroductionScreenState>();
  @override
  Widget build(BuildContext context) {
    final _PageDecoration=PageDecoration(
      titleTextStyle: TextStyle(
        color: Colors.deepPurple,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      bodyAlignment: Alignment.center,
      bodyTextStyle: TextStyle(color: Colors.black,fontSize: 21,fontWeight: FontWeight.w200),
      pageColor: Colors.white,
      bodyPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 12),
      imagePadding: EdgeInsets.zero,

    );
    return IntroductionScreen(
      key: _introKey,
      pages: [
        PageViewModel(
          title: "Shop Now",
          body: "Browse our latest collection of stylish and comfortable jerseys. Perfect for any occasion, whether you're on the field or supporting your team. Get yours today and stand out with unbeatable style!",
          image: Image.network("assets/undraw_images/introductionScreen/undraw_Send_gift_re_t5ni.png",width: 250,height: 250,),
          decoration: _PageDecoration
        ),PageViewModel(
          title: "Best Deals",
          body: "Discover unbeatable prices on our top-quality jerseys. From sports teams to casual wear, we have something for everyone at the best rates. Shop now and score amazing deals while they last!",
          image: Image.network("assets/undraw_images/introductionScreen/undraw_Business_deal_re_up4u.png",width: 250,height: 250,),
          decoration: _PageDecoration
        ),PageViewModel(
          title: "Buy Any Colors of Jersy",
          body: "Choose from a wide range of vibrant colors to match your style and team spirit. Whether you’re looking for bold hues or classic shades, we’ve got it all. Find your perfect jersey today and wear it your way!",
          image: Image.network("assets/undraw_images/introductionScreen/undraw_Send_gift_re_t5ni.png",width: 250,height: 250,),
          decoration: _PageDecoration
        ),PageViewModel(
          title: "Fastest Delivery",
          body: "Get your jerseys delivered right to your doorstep in record time! We prioritize quick shipping, so you can start wearing your new jersey sooner than you expect. Order now and enjoy lightning-fast delivery!",
          image: Image.network("assets/undraw_images/introductionScreen/undraw_delivery_truck_vt6p.png",width: 250,height: 250,),
          decoration: _PageDecoration,

          footer: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
              }, child: Text("Lets Shop",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity,55),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                backgroundColor: Colors.deepPurple
                      ),),

            ),
          ),

        ),


      ],
      dotsDecorator: DotsDecorator(
        size: Size.square(13),
        activeColor: Colors.deepPurple,
        activeSize: Size(20,10),
        color: Colors.grey,
        spacing: EdgeInsets.symmetric(horizontal: 4),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26),
        ),
      ),
      showBackButton: true,
      showNextButton: true,
      showSkipButton: false,
      showDoneButton: false,
      back: Text(
        'Back  ',
        style: TextStyle(
            fontSize: 19, fontWeight: FontWeight.bold, color: Colors.deepPurple),
      ),
      next: Text(
        'Next  ',
        style: TextStyle(
            fontSize: 19, fontWeight: FontWeight.bold, color: Colors.deepPurple),
      ),

    );
  }
}
