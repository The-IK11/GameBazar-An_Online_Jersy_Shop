import 'package:flutter/material.dart';

class Pay extends StatefulWidget {
  const Pay({super.key});

  @override
  State<Pay> createState() => _PayState();
}

class _PayState extends State<Pay> {
  int _type=1;
  void radio_changes(Object?value){
    setState(() {
      _type=value as int;
    });
  }

  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.payment,size: 30,color: Colors.black,),
            ),
            Text("Payment Method",  style: TextStyle(
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
        padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepPurple.withOpacity(0.2),
                  border: _type==1?Border.all(color: Colors.deepPurple,width: 3):Border.all(color:Colors.grey),
                  borderRadius: BorderRadius.circular(12)
                ),
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Radio(value: 1, groupValue: _type, onChanged: radio_changes,activeColor: Colors.deepPurple,),
                      Text("PayPal",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                      ClipRRect(
                        child:Image.network("https://cdn.prod.website-files.com/5ee732bebd9839b494ff27cd/5ee732bebd98395aa0ff2815_paypal-logo-preview.webp",height: double.infinity,width: 120,fit: BoxFit.cover,),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.deepPurple.withOpacity(0.2),
                    border: _type==2?Border.all(color: Colors.deepPurple,width: 3):Border.all(color:Colors.grey),
                    borderRadius: BorderRadius.circular(12)
                ),
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Radio(value: 2, groupValue: _type, onChanged: radio_changes,activeColor: Colors.deepPurple,),
                      Text("GooglePay",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                      ClipRRect(
                        child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLQ97RboY2w_pjQQE5rJPd8xCGoyiwENhP-A&s",height:double.infinity,width: 120,fit: BoxFit.cover,),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.deepPurple.withOpacity(0.2),
                    border: _type==3?Border.all(color: Colors.deepPurple,width: 3):Border.all(color:Colors.grey),
                    borderRadius: BorderRadius.circular(12)
                ),
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Radio(value: 3, groupValue: _type, onChanged: radio_changes,activeColor: Colors.deepPurple,),
                      Text("Bkash",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                      ClipRRect(
                        child:Image.network("https://community.appinventor.mit.edu/uploads/default/original/3X/7/e/7e5d178642a95e6ecc3dd1d2e12afd0b34bd3031.png",height:double.infinity,width: 130,fit: BoxFit.cover,),                    )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.deepPurple.withOpacity(0.2),
                    border: _type==4?Border.all(color: Colors.deepPurple,width: 3):Border.all(color:Colors.grey),
                    borderRadius: BorderRadius.circular(12)
                ),
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Radio(value: 4, groupValue: _type, onChanged: radio_changes,activeColor: Colors.deepPurple,),
                      Text("Nagad",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                      ClipRRect(
                        child:Image.network("https://mir-s3-cdn-cf.behance.net/projects/404/71de1a123637063.Y3JvcCwxMzgyLDEwODEsMzA0LDA.jpg",height:double.infinity,width: 120,fit: BoxFit.cover,),             ),


                    ],

                  ),
                ),

              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Sub Totlal",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                  Text("\$2990.00",style: TextStyle(fontSize: 20,color: Colors.deepPurple,fontWeight: FontWeight.bold),),

                ],
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Delivery Charge",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                  Text("\$25",style: TextStyle(fontSize: 20,color: Colors.deepPurple,fontWeight: FontWeight.bold),),

                ],
              ),
            ),
            SizedBox(height: 9,),
            Divider(
              color: Colors.deepPurple,
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total Payment",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
                Text("\$25970",style: TextStyle(fontSize: 20,color: Colors.deepPurple,fontWeight: FontWeight.w300),),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: (){}, child: Text("CheckOut",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),style: ElevatedButton.styleFrom(
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
