import 'package:flutter/material.dart';
import 'package:gamebazar/screens/on_bording_introduction_screen/on_bording_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 4),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>OnBordingScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Container(
            height: double.infinity,
            width:double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(image: NetworkImage("assets/jersy_images/image13.jpg"),fit: BoxFit.cover,
              opacity: 0.6)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.shopping_cart_outlined,size: 140,color: Colors.white70,),
                SizedBox(
                  height: 5,
                ),

                    Container(
                     decoration: BoxDecoration(
                       color: Colors.white54,
                       border: Border.all(color: Colors.white),
                       borderRadius: BorderRadius.circular(100)
                     ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text(" Game ",style: TextStyle(fontSize: 40,color: Colors.purple,fontWeight: FontWeight.bold,),),
                          Text("Bazar",style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ),

              ],
            ),
          ),

    );
  }
}
