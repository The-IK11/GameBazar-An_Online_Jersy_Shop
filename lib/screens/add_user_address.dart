import 'package:flutter/material.dart';

class AddUserAddress extends StatelessWidget {
  const AddUserAddress({super.key});

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
        padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 14.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            ClipRRect(
              child: Image.network("assets/undraw_images/undraw_Current_location_re_j130.png",height: 200,width: 200,fit:BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.deepPurple.withOpacity(0.2),
                  hintText: "Full Name",
                 prefixIcon: Icon(Icons.person,color: Colors.deepPurple,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),

                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.deepPurple.withOpacity(0.2),
                  hintText: "Number",
                  prefixIcon: Icon(Icons.phone,color: Colors.deepPurple,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),

                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: TextFormField(
                decoration: InputDecoration(
                    fillColor: Colors.deepPurple.withOpacity(0.2),
                    hintText:"Address",
                    prefixIcon: Icon(Icons.location_city_sharp,color: Colors.deepPurple,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),

                    )
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: TextFormField(
                decoration: InputDecoration(
                    fillColor: Colors.deepPurple.withOpacity(0.2),
                    hintText: "State",
                    prefixIcon: Icon(Icons.real_estate_agent,color: Colors.deepPurple,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),

                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: TextFormField(
                decoration: InputDecoration(
                    fillColor: Colors.deepPurple.withOpacity(0.2),
                    hintText: "Zip Code",
                    prefixIcon: Icon(Icons.numbers_outlined,color: Colors.deepPurple,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),

                    )
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: (){}, child: Text("Add Address",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),style: ElevatedButton.styleFrom(
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
