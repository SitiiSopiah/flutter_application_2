import 'package:flutter/material.dart';

class Halamantiga extends StatelessWidget {
  const Halamantiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman Ketiga')),
      body: Center(
        child: ElevatedButton(onPressed: () {
          Navigator.pop(context);
        }, 
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.pink[100],
          foregroundColor: Colors.white,
        ),
        child: Text('Kembali ke halaman sebelumnya')),
      ),
    );
  }
}