
import'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class SlideScreens extends StatefulWidget {
  SlideScreens({super.key});

  @override
  State<SlideScreens> createState() => _SlideScreensState();
}

class _SlideScreensState extends State<SlideScreens> {
  int activeIndex=0;

  final CarouselController carouselController=CarouselController();

  List Slide_image=[
    { "image_path":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_UjgV6r0Aq6um3x1VOtO8oOqPn7lmBf6mtw&s"},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(3.0),

          child: Stack(
              children: [
                InkWell(
                  onTap: (){

                  },
                  child: CarouselSlider(items:Slide_image
                      .map((item)=>Image.network(
                    item["image_path"],
                    fit:BoxFit.fill,
                    height: 200,
                    width:double.infinity,),).toList(),
                      //carouselController:carouselController,
                      options:CarouselOptions(
                          scrollPhysics: const BouncingScrollPhysics(),
                          autoPlay: true,
                          height: 225,
                          aspectRatio: 2,
                          viewportFraction: 1,
                          onPageChanged: (index,reason){
                            setState((){
                              activeIndex=index;
                            });
                          }
                      )
                  ),

                ),
                Positioned(
                  bottom: 10,
                  left: 210,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: Slide_image.asMap().entries.map((entry) {
                      int idx = entry.key;
                      return GestureDetector(
                        //onTap: () => carouselController.jumpToPage(idx),
                        child: Container(
                          width: 8.0,
                          height: 8.0,
                          margin: const EdgeInsets.symmetric(horizontal: 4.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: activeIndex == idx ? Colors.deepOrange : Colors.white,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),


              ]
          )




      ),
    );
  }
}
