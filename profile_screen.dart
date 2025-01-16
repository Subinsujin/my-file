import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              //Handle edit profile action
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,
          children:[
        //Profile Picture Section
        Center(
        child:CircleAvatar(
        radius:60,
          backgroundImage:
          NetworkImage(''),
        ),
      ),
      const SizedBox(height: 20),

      //Name and Email Information
      Center(
        child: Column(
          children: [
            Text(
              'John Doe',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'johndoe@gmail.com',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      const SizedBox(height: 40),
      //Profile Details Section
      const Text(
        'Profile Details',
        style: TextStyle(fontSize: 20, fontWeight:
        FontWeight.bold),
      ),
      const SizedBox(height: 20),

      Card(
          elevation: 4,
          shape:RoundedRectangleBorder(
      borderRadius:
      BorderRadius.circular(10),
    ),
    child:ListTile(
    leading: const Icon(Icons.person),
    title: const Text('Full Name'),
    subtitle: const Text('John Doe'),
    ),
    ),
    const SizedBox(height:10),

    Card(
    elevation:4,
    shape: RoundedRectangleBorder(
    borderRadius:
    BorderRadius.circular(10),
    ),
    child:ListTile(
    leading:const Icon(Icons.phone),
    title:const Text('Phone Number'),
    subtitle:const Text('+234 567 890'),
    ),
    ),
    const SizedBox(height:10),

    Card(
    elevation:4,
    shape:RoundedRectangleBorder(
    borderRadius:
    BorderRadius.circular(10),
    ),
    child:ListTile(
    leading:const Icon(Icons.location_on),
    title:const Text('Location'),
    subtitle:const Text('New York,USA'),
    ),
    ),
    const SizedBox(height:40),

    //Logout Button
    Center(
    child:ElevatedButton(
    onPressed:(){
    //Handle logout action
    },
    style:ElevatedButton.styleFrom(
    backgroundColor: Colors.redAccent,
    padding:const
    EdgeInsets.symmetric(horizontal:32,vertical:12),
    shape:RoundedRectangleBorder(
    borderRadius:
    BorderRadius.circular(10),
    ),
    ),
    child:const Text(
    'Logout',
    style:TextStyle(fontSize:18),
    ),
    ),
    ),
    ],
    ),
    ),
    );
  }
}

