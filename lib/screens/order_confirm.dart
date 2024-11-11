import 'package:flutter/material.dart';

class OrderConfirm extends StatelessWidget {
  const OrderConfirm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.location_city,size: 30,color: Colors.black,),
            ),
            Text("Add Address",  style: TextStyle(
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
        padding: const EdgeInsets.all(13.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Delivey Address",style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.w400),),
            ),
            Container(
              height: 140,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.deepPurple.withOpacity(0.2),
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: Offset(0, 3)
                  )
                ]
              ),
              child: Padding(padding:EdgeInsets.all(9.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Order Info",style: TextStyle(color: Colors.black,fontSize: 15),),
                      TextButton(onPressed: (){},child: Text("Change",style: TextStyle(color: Colors.deepPurple,fontSize: 15,fontWeight: FontWeight.bold),),)

                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    color: Colors.white70,
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Bangladesh,Dhaka ,C block ,North Banasree,Number:01889254301",style: TextStyle(color: Colors.deepPurple,fontSize: 14 ),),
                  ))
                ],
              ),),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Payment Method",style: TextStyle(color: Colors.black,fontSize: 17,),),
                TextButton(onPressed: (){},child: Text("Change",style: TextStyle(color: Colors.deepPurple,fontSize: 15),),)

              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3)
                        )
                      ]
                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(

                      child: Image.network("https://cdn.prod.website-files.com/5ee732bebd9839b494ff27cd/5ee732bebd98395aa0ff2815_paypal-logo-preview.webp",fit:BoxFit.cover),
                    ),
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(left: 10.0),
                   child: Text("**** *** **** *** 258159",style: TextStyle(color: Colors.black,fontSize: 14,),),
                 ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Delivery Method",style: TextStyle(color: Colors.black,fontSize: 18),),
                TextButton(onPressed: (){},child: Text("Change",style: TextStyle(color: Colors.deepPurple,fontSize: 15),),)

              ],
            ),
            Row(
              
              children: [
                Container(
                  height: 71,
                  width:90,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3)
                        )
                      ]
                  ),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                      
                          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjVkWtsDRFqcgidjRrYtILTcUF60Si6NVtiQ&s",height:35,width:double.infinity,fit:BoxFit.cover),
                        ),
                      ),
                      Text("7-10 :Days")
                    ],
                  ),
                ),
                SizedBox( width: 25,),
                Container(
                  height: 71,
                  width: 90,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3)
                        )
                      ]
                  ),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(

                          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsWQZfB56JqMfpQliU-LDNTChMwT9pn6pzTupDazI9iUEZw8qMSMN0yI-uGLSwyfSz46w&usqp=CAU",height:35,width:double.infinity,fit:BoxFit.cover),
                        ),
                      ),
                      Text("3-6 :Days")
                    ],
                  ),
                ),
              
              ],
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(onPressed: (){}, child: Text("Confirm Order",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity,55),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                ),
                backgroundColor: Colors.deepPurple
            ),)


          ],
        ),
      ),
    );
  }
}
