import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profil saya',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            child: ClipOval(
              child: (Image.asset(
                'image/foto.png',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              )),
            ),
          ),

          SizedBox(height: 20),

          Text(
            'Siti Sopiah',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            'Kelas XI RPL 2',
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),

          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(onPressed: () {},
                icon: const Icon (Icons.call),
                label: const Text('Call'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                ),
              ),
              const SizedBox(width: 10),
              ElevatedButton.icon(onPressed: () {},
                icon: const Icon (Icons.route),
                label: const Text('Route'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                ),
              ),
              const SizedBox(width: 10),
              ElevatedButton.icon(onPressed: () {},
                icon: const Icon (Icons.share),
                label: const Text('Share'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}