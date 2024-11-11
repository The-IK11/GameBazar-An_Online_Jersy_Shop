import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.account_circle, size: 30, color: Colors.black),
            SizedBox(width: 10),
            Text(
              "Profile",
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Profile Picture and Name Section
              Container(
                width: double.infinity,
        
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.deepPurple),
                  color: Colors.deepPurple.withOpacity(0.2)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Column(
                    children: [
                      Stack(
                          //clipBehavior: Clip.antiAliasWithSaveLayer,
                          children: [CircleAvatar(
                            radius: 60,
                            backgroundImage: NetworkImage(
                              "assets/jersy_images/image10.jpg", // Profile Picture
                            ),),
        
                            Positioned(
                                top:0 ,left: 85,
                                child: Badge(
                                  child: IconButton(onPressed: (){}, icon: Icon(Icons.add_a_photo,color: Colors.white70,size: 25,)),
                                ))]
                      ),
                      SizedBox(height: 16),
                      Text(
                        "Lionel Messi",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "messi@gmail.com",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
        
              SizedBox(height: 24),
        
              // User Info Cards
              Card(
                elevation: 5,
                margin: EdgeInsets.only(bottom: 16),
                child: ListTile(
                  leading: Icon(Icons.person, color: Colors.deepPurple),
                  title: Text("Full Name", style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text("Lionel Messi"),
                  trailing: Icon(Icons.edit, color: Colors.deepPurple),
                  onTap: () {
                    // Navigate to edit full name
                    print("Edit Full Name");
                  },
                ),
              ),
              Card(
                elevation: 5,
                margin: EdgeInsets.only(bottom: 16),
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.deepPurple),
                  title: Text("Email", style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text("Lionel@gmail.com"),
                  trailing: Icon(Icons.edit, color: Colors.deepPurple),
                  onTap: () {
                    // Navigate to edit email
                    print("Edit Email");
                  },
                ),
              ),
              Card(
                elevation: 5,
                margin: EdgeInsets.only(bottom: 16),
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.deepPurple),
                  title: Text("Phone Number", style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text("+123 456 7890"),
                  trailing: Icon(Icons.edit, color: Colors.deepPurple),
                  onTap: () {
                    // Navigate to edit phone number
                    print("Edit Phone Number");
                  },
                ),
              ),
              Card(
                elevation: 5,
                margin: EdgeInsets.only(bottom: 24),
                child: ListTile(
                  leading: Icon(Icons.home, color: Colors.deepPurple),
                  title: Text("Address", style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text("123 Street, City, Country"),
                  trailing: Icon(Icons.edit, color: Colors.deepPurple),
                  onTap: () {
                    // Navigate to edit address
                    print("Edit Address");
                  },
                ),
              ),
        
              // Logout Button
              ElevatedButton(
                onPressed: () {
                  // Handle logout
                  print("Logging out...");
                  // You can navigate to login screen or clear user session data here.
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                  minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)),
                ),
                child: Text(
                  "Log Out",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
