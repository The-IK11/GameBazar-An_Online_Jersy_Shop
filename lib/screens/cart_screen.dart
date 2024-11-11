import 'package:flutter/material.dart';
import 'package:gamebazar/screens/home_page.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_cart,size: 30,color: Colors.black,),
            Text("Your Cart",  style: TextStyle(
              fontSize: 25,
              color: Colors.purple,
              fontWeight: FontWeight.bold,
            ),),
          ],
        ),
        centerTitle: true,
        leading: IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back)),
        elevation: 10,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [

            Expanded(
              child: ListView.builder(itemCount: jersy_images.length,itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.only(top: 8.0,right: 8.0,left: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.deepPurple.withOpacity(0.2),
                        border: Border.all(color: Colors.grey),
                        boxShadow: [
                          BoxShadow(color: Colors.grey.shade100,
                              spreadRadius: 3,blurRadius: 10,offset: Offset(0, 3))
                        ]
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.check_box,color: Colors.purpleAccent,size: 20,)),
                          ClipRRect(
                            child: Image.network(jersy_images[index],height: 80,width: 70,fit: BoxFit.cover,),borderRadius: BorderRadius.circular(12),
                          ),
                          Column(
                            children: [
                              Text("Black Jersy",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                              SizedBox(height: 4,),
                              Text("Best Prices",style: TextStyle(color: Colors.grey,fontSize: 15),),
                              SizedBox(height: 4,),
                              Text("\$140",style: TextStyle(color: Colors.blue,fontSize: 16),),

                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  IconButton(onPressed: (){}, icon: Icon(Icons.remove,color: Colors.red,size: 15,)),
                                  SizedBox(width: 3,),
                                  Text("1",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w200),),
                                  SizedBox(width: 3,),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.deepPurple,size: 15,)),
                                ],
                              ),
                              ElevatedButton(onPressed:(){}, child:Text("Delet",style:TextStyle(color: Colors.white,)),style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
            Container(
             // height: 400,
             // height: 400,
              width: double.infinity,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(color: Colors.grey)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Select All",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black,fontSize: 25),),
                        IconButton(onPressed: (){}, icon: Icon(Icons.check_box_outline_blank),color: Colors.deepPurple,)
                      ],
                    ),
                    SizedBox(height: 5,),
                    Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(height: 5,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Payment",style: TextStyle(fontWeight:FontWeight.w300,color: Colors.black,fontSize: 18),),
                        Text("\$467",style: TextStyle(fontWeight:FontWeight.w300,color: Colors.blue,fontSize: 18),),

                      ],

                    ),
                    SizedBox(height: 5,),
                    ElevatedButton(onPressed:(){}, child:Text("CheckOut",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white,fontSize: 20),),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.deepPurple),minimumSize: MaterialStateProperty.all(Size(400, 45)),shape:MaterialStateProperty.all(RoundedRectangleBorder( borderRadius: BorderRadius.circular(8)))),   ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
