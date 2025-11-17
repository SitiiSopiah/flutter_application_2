import 'package:flutter/material.dart';

class LatihanProfil extends StatelessWidget {
  const LatihanProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Saya',
        style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Column(
        children: [
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage:AssetImage('image/foto.png'),
            ) 
          ),

          SizedBox(height: 20),

          Center(
            child: Text(
              'Siti Sopiah',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ) 
            )
          ),

          SizedBox(height: 10),

          Center(
            child: Text(
              'Seorang Pelajar di SMK YPC Tasikmalaya',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ) 
            )
          ),

          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                label: Text("Share"),
                icon: Icon(Icons.share),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                label: Text("Message"),
                icon: Icon(Icons.message),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                label: Text("Email"),
                icon: Icon(Icons.email),
              )
            ],
          )
        ],
      )
    );
  }
}