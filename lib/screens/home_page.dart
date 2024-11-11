import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gamebazar/widgetss/drawer_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeIndex=0;

  final CarouselController carouselController=CarouselController();

  List Slide_image=[
    { "image_path":"https://i0.wp.com/footballfashion.org/wordpress/wp-content/uploads/2022/07/juventus-2022-2023-adidas-away-kit-2.jpg?ssl=1",},
    { "image_path":"https://cdn.dribbble.com/userupload/11229951/file/original-ac15b8ae4ae7f76f880da0f4e0fe9a7c.png?crop=0x108-2344x1866&resize=400x300&vertical=center",},
    { "image_path":"https://a.espncdn.com/combiner/i?img=%2Fphoto%2F2024%2F0813%2Feuro%2Dkit%2D2024%2Dranking_16x9.jpg",},
    { "image_path":"https://clubjerseys.in/wp-content/uploads/2024/09/New-Season-24-25-min_11zon-1300x650.png",},
    { "image_path":"https://sportal365images.com/process/smp-images-production/ringier.africa/19072024/9b909935-befd-49fe-9961-98b8537c74b3.jpg?operations=fit(770:)",},
    { "image_path":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTji9HXBpVnXSXAeWjKPVEbT4OC6na49eZOmg&s"},

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
              text: "Game",
              style: TextStyle(
                fontSize: 25,
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                    text: "Bazar",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ))
              ]),
        ),
        elevation: 10,
      ),
      endDrawer: DrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Search and notification bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Search container
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.deepPurple),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white.withOpacity(0.20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 6,
                          spreadRadius: 2,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                  child:
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Search Here for Your Needs",
                              prefixIcon:  Icon(Icons.search,
                                  color: Colors.deepPurple, size: 40),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none
                            )

                            ),
                          ),




                    ),
                  ),
                  // Notification container
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.deepPurple),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.deepPurple,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          spreadRadius: 2,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Icon(Icons.notifications,
                          color: Colors.white, size: 30),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 14),
              Padding(
                  padding: const EdgeInsets.all(3.0),

                  child: Container(
                    height: 180,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.withOpacity(0.20),
                      border: Border.all(color: Colors.deepPurple,),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          spreadRadius: 2,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),

                    child: Stack(
                        children: [
                          InkWell(
                            onTap: (){

                            },
                            child: CarouselSlider(items:Slide_image
                                .map((item)=>ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                                  child: Image.network(

                                                                item["image_path"],
                                                                fit:BoxFit.fill,
                                                                height: 200,
                                                                width:double.infinity,),
                                ),).toList(),
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
                                      color: activeIndex == idx ? Colors.deepPurple : Colors.white,
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),


                        ]
                    ),
                  )




              ),


              // Image container

              SizedBox(height: 14),

              // Sections List
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 6,
                      spreadRadius: 2,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: sections.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          height: 29,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.deepPurple),
                            color: Colors.deepPurple.withOpacity(0.2).withOpacity(0.1),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                sections[index],
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, bottom: 10, right: 5, left: 5),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.white,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: jersy_images.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 10),
                          height: 200,
                          // width: 180,
                          decoration: BoxDecoration(
                            color: Colors.deepPurple.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(14),
                              border: Border.all(color: Colors.deepPurple)

                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                   decoration:BoxDecoration(

                                     boxShadow: [
                                       BoxShadow(
                                         color: Colors.black.withOpacity(0.1),
                                         blurRadius: 10,
                                         spreadRadius: 5,
                                         offset: Offset(0, 3)
                                       )
                                     ]
                                   ),
                                    margin: EdgeInsets.only(right: 6),
                                    child: Stack(
                                      children:[ ClipRRect(
                                          borderRadius: BorderRadius.circular(12),
                                          child: Image.network(
                                            jersy_images[index],
                                            fit: BoxFit.cover,
                                            height: 170,
                                            width: 150,

                                          )),
                                        Positioned(
                                          top: 10,
                                            right: 10,
                                            child:Icon(Icons.favorite_border_outlined,color: Colors.black,))
                                      ]
                                    )),
                                Container(
                                    width: 100,
                                    height: 170,
                                   // color:Colors.deepPurple.withOpacity(0.2),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                     crossAxisAlignment:CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                            " it to make a type specimen book. "),
                                         Row(

                                           children: [
                                             Icon(Icons.star,color:Colors.yellow),
                                             Text("(${rating[index]})"),
                                             SizedBox(width: 10,),
                                             Text("\$${price[index]}",style: TextStyle(color: Colors.blue),),

                                           ],
                                         ),
                                        SizedBox(height: 7,),
                                        ElevatedButton(onPressed: (){}, child: Text("Buy Now",style: TextStyle(color: Colors.black,fontSize: 12),),style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.deepPurple,elevation: 10
                                        ),)
                                      ],
                                    ))
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),
              Container(
                height: 70,
                width: double.infinity,

                child: Row(
               crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(

                        child: Text("New Products",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 25),)),
                    SizedBox(width: 5,),
                    Center(
                      child: Container(
                        height: 3,
                        width:250,
                        color: Colors.deepPurple,
                      ),
                    )
                  ],
                ),
              ),
             // SizedBox(height: 5,),
              Container(
                width: double.infinity,
                height: 700,

                child: GridView.builder(
                    gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2,crossAxisSpacing: 5,mainAxisSpacing: 5),itemCount: jersy_images.length,itemBuilder: (context,index){
                      return Container(
                        height: 140,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border:Border.all(color: Colors.grey),

                        ),

                        child: Padding(
                          padding: const EdgeInsets.only(top: 2.0),
                          child: Column(
                            children: [
                              Container(
                                decoration:BoxDecoration(
                          boxShadow: [
                              BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            spreadRadius: 5,
                            offset: Offset(0, 3)
                        )
                          ]
                          ),
                                child: ClipRRect(
                                  borderRadius:BorderRadius.circular(10),
                                  child: Image.network(jersy_images[index], fit: BoxFit.cover,height: 160,width: 160,),
                                ),
                              ),
                             // SizedBox(height: 2,),
                              Text("Jersy Name",style: TextStyle(color: Colors.black,fontSize: 20),),
                              Text("\$${price[index]}",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold
                              ),),
                              InkWell(
                                onTap:(){},
                                child: Container(
                                  height: 25,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Colors.deepPurple,
                                  ),
                                  child: Center(child: Text("Add To Cart",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w400),),),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                }),
              )
            ],
          ),
        )
      ),
    );
  }
}

List<String> sections = [
  "All",
  "Categories",
  "Top",
  "Recommended",
  "New Arrivals",
  "Trending",
  "Sale",
  "Featured",
  "Most Popular",
  "Exclusive",
  "Best Sellers",
];
List<String> jersy_images = [
  "https://assets.adidas.com/images/w_1880,f_auto,q_auto/bbcb3b2c4b584cceb969e7b0df5a0efe_9366/HR3675_HM1.jpg",
  "assets/jersy_images/dress3.jpg",
  "assets/jersy_images/image5.webp",
  "assets/jersy_images/image6.jpeg",
  "assets/jersy_images/image7.webp",
  "assets/jersy_images/image8.webp",
  "assets/jersy_images/image10.jpg",
  "assets/jersy_images/image11.jpg"
];
List<String>rating=[
  "40",
  "26",
  "34",
  "48",
  "40",
  "26",
  "34",
  "48",
];
List<String>price=[
  "300",
  "200",
  "170",
  "309",
  "456",
  "253",
  "334",
  "442",
];
