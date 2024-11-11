import 'package:flutter/material.dart';
import 'package:gamebazar/screens/home_page.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  var selectedDays=0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.favorite, size: 30, color: Colors.black),
            SizedBox(width: 10),
            Text(
              "Your Favorites",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.purple.shade800,
              ),
            ),
          ],

        ),

        centerTitle: true,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        elevation: 10,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            buildCalendar(selectedDays),
            SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: jersy_images.length,
                itemBuilder: (context, index) {
                  String imageUrl = jersy_images[index];


                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: InkWell(
                      onTap: (){
                        print("${index}");
                        setState(() {
                          selectedDays=add_on_fav_date[index];
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.deepPurple.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 8,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child:  ClipRRect(
                                  borderRadius: BorderRadius.circular(14),
                                  child: Image.network(
                                    imageUrl,
                                    height: 100,
                                    width: 90,
                                    fit: BoxFit.cover,
                                  ),
                                )

                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Favorite Item ${index + 1}",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "Best Prices on this amazing product!",
                                        style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "\$120",
                                        style: TextStyle(
                                          color: Colors.blue.shade700,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.delete_forever_rounded, color: Colors.red, size: 35),
                                    ),

                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}

// Calendar widget to display August month
Widget buildCalendar(int SelectedDays) {
  final FavoriteScreen favoriteScreen=FavoriteScreen();
  // August 2024 starts on a Thursday and has 31 days
  List<String> daysOfWeek = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
  List<String> augustDays = [
    "", "", "", "", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11",
    "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23",
    "24", "25", "26", "27", "28", "29", "30", "31"
  ];

  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "November 2024",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.purple),
        ),
        SizedBox(height: 10),
        Container(

          child: GridView.builder(
          shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
            childAspectRatio: 3.0,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
            ),
            itemCount: 35, // 7 days x 5 weeks max
            itemBuilder: (context, index) {
              String day = augustDays[index];
              bool isDayOfWeek = index < 7;
             // Check if it's a day of the week header

              bool isSelected =  int.tryParse(day) == SelectedDays;

              return Container(
                height: 12,
                decoration: BoxDecoration(
                  color: isSelected
                      ? Colors.deepPurple
                      : isDayOfWeek
                      ? Colors.purple.shade100
                      : Colors.white,

                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(color: Colors.black.withOpacity(0.05), spreadRadius: 1, blurRadius: 4)
                  ],
                ),
                child: Center(
                  child:  Text(
                    day.isNotEmpty ? day : "",
                    style: TextStyle(
                      color: isSelected
                          ? Colors.white
                          : isDayOfWeek
                          ? Colors.purple.shade700
                          : Colors.black,
                      fontSize: 14,  // Reduced font size for compact look
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    ),
  );
}

List<int> add_on_fav_date= [
  12,30,3,5,7,2,11,23
];