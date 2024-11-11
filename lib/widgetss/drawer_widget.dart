import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,

              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  border: Border.all(color:Colors.grey),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(12),bottomLeft: Radius.circular(12))
                ),

                  currentAccountPicture: CircleAvatar(
                      radius: 37,
                      backgroundImage:NetworkImage("assets/jersy_images/image10.jpg"),

                    ),

                  arrowColor: Colors.black,
                  accountName: Text("Lionel Messi",style: TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                  accountEmail:Text("messi@gmail.com",style: TextStyle(color:Colors.black,fontSize: 17,fontWeight: FontWeight.bold),))),
           Padding(padding: EdgeInsets.only(top: 8.0,right: 8.0,left: 8.0),
           child: Card(
             elevation: 10,
             color: Colors.purpleAccent.withOpacity(0.2),
             child: ListTile(
               leading: Icon(Icons.home,color: Colors.deepPurple,size:30 ),
               title: Text("Home",style: TextStyle(color: Colors.black,fontSize: 16),),
               trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_right,size: 30,color: Colors.deepPurple,opticalSize: 40,),),
             ),
           ),),
          Padding(padding: EdgeInsets.only(top: 8.0,right: 8.0,left: 8.0),
            child: Card(
              elevation: 10,
              color: Colors.purpleAccent.withOpacity(0.2),
              child: ListTile(
                leading: Icon(Icons.account_box,color: Colors.deepPurple,size:30 ),
                title: Text("Profile",style: TextStyle(color: Colors.black,fontSize: 16),),
                trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_right,size: 30,color: Colors.deepPurple,opticalSize: 40,),),
              ),
            ),),
          Padding(padding: EdgeInsets.only(top: 8.0,right: 8.0,left: 8.0),
            child: Card(
              elevation: 10,
              color: Colors.purpleAccent.withOpacity(0.2),
              child: ListTile(
                leading: Icon(Icons.settings,color: Colors.deepPurple,size:30 ),
                title: Text("Settings",style: TextStyle(color: Colors.black,fontSize: 16),),
                trailing:PopupMenuButton(color:Colors.white70,itemBuilder: (context){
                  return [
                    PopupMenuItem(child: Text("General Settings",style:TextStyle(
                      color: Colors.deepPurple,fontWeight: FontWeight.bold,
                    )),value: "General Settings",),
                    PopupMenuItem(child: Text("Privacy"),
                    value: "Privacy",),
                    PopupMenuItem(child: Text("Account"),value:"Account"),
                    PopupMenuItem(child: Text("Notifications"),value: "Notifications",),
                  ];
                },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Border radius for rounded corners
                    side: BorderSide(
                      color: Colors. grey,  // Border color
                      width: 2,                  // Border width
                    ),
                  ),
                  onSelected: (String value){
                  print("Selected : $value");
                  },
                ),
            ),),),
          Padding(padding: EdgeInsets.only(top: 8.0,right: 8.0,left: 8.0),
            child: Card(
              elevation: 10,
              color: Colors.purpleAccent.withOpacity(0.2),
              child: ListTile(
                leading: Icon(Icons.support,color: Colors.deepPurple,size:30 ),
                title: Text("Help & Suupport",style: TextStyle(color: Colors.black,fontSize: 16),),
                trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_right,size: 30,color: Colors.deepPurple,opticalSize: 40,),),
              ),
            ),),
          Padding(padding: EdgeInsets.only(top: 8.0,right: 8.0,left: 8.0),
            child: Card(
              elevation: 10,
              color: Colors.purpleAccent.withOpacity(0.2),
              child: ListTile(
                leading: Icon(Icons.info,color: Colors.deepPurple,size:30 ),
                title: Text("App Info",style: TextStyle(color: Colors.black,fontSize: 16),),
                trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_right,size: 30,color: Colors.deepPurple,opticalSize: 40,),),
              ),
            ),),
          Padding(padding: EdgeInsets.only(top: 8.0,right: 8.0,left: 8.0),
            child: Card(
              elevation: 10,
              color: Colors.purpleAccent.withOpacity(0.2),
              child: ListTile(

                leading: IconButton(onPressed:(){},icon:Icon(Icons.logout,color: Colors.deepPurple,size:30 )),
                title: Text("Logout",style: TextStyle(color: Colors.black,fontSize: 16),),
               // trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_right,size: 30,color: Colors.deepPurple,opticalSize: 40,),),
              ),
            ),)
        ],
      ),
    );
  }
}
