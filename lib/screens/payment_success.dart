import 'package:flutter/material.dart';

class PaymentSuccess extends StatefulWidget {
  const PaymentSuccess({super.key});

  @override
  State<PaymentSuccess> createState() => _PaymentSuccessState();
}

class _PaymentSuccessState extends State<PaymentSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              child: Image.network("https://cdn-icons-png.flaticon.com/512/7518/7518748.png",height: 270,width:270,fit: BoxFit.cover,),
            ),
          ),
          Text("Payment Success !",style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold,fontSize: 20),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Check your email inbox sir.\nWe sent you OTP on your email address.\nIf your OTP is 2873709 , Your payment we recived ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16,),textAlign: TextAlign.center,),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: ElevatedButton(onPressed: (){}, child: Text("Check OTP",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity,55),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                ),
                backgroundColor: Colors.deepPurple
            ),),
          )

        ],
      ),
    );
  }
}
