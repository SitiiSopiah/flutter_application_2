import 'package:flutter/material.dart';

class Tugas extends StatelessWidget {
  const Tugas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pesona Gunung Bromo"), centerTitle: true),
      body: Column(
        children: [
          Image.asset(
            'image/gunung.jpg',
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          SizedBox(height: 16),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    "Gunung Bromo",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 16),

                  Text("Tasikmalaya"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.star),
                  Text('41')
                ],
              )
            ],
          ),
          SizedBox(height: 16),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(children: [Icon(Icons.call), Text("CALL")]),
              Column(children: [Icon(Icons.near_me), Text("ROUTE")]),
              Column(children: [Icon(Icons.share), Text("SHARE")]),
            ],
          ),
          SizedBox(height: 16),

          Text("Lorem"),
        ],
      ),
    );
  }
}