import 'package:flutter/material.dart';

class Latihan extends StatelessWidget {
  const Latihan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil',
        style: TextStyle(color: Colors.pink[300])),
        backgroundColor: Colors.blue[100],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),

          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('image/foto.png'),
            ),
          ),

          SizedBox(height: 20),

          Text('Siti Sopiah',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),

          SizedBox(height: 7),

          Text('Seorang pelajar di  SMK YPC Tasikmalaya',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal)),

          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: () {}, 
                label: Text('Share', style: TextStyle(color: Colors.pink[300])),
                icon: Icon(Icons.share, color: Colors.pink[300]),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[100]
                )
              ),
              ElevatedButton.icon(
                onPressed: () {}, 
                label: Text('Message', style: TextStyle(color: Colors.pink[300])),
                icon: Icon(Icons.message, color: Colors.pink[300]),  
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[100]
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {}, 
                label: Text('School', style: TextStyle(color: Colors.pink[300])),
                icon: Icon(Icons.school, color: Colors.pink[300]),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[100]
                )
              ),
            ],
          )
        ],
      ),
    );
  }
}