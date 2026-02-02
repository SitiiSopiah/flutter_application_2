import 'package:flutter/material.dart';

class Tugasnavigator2 extends StatelessWidget {
  final String nama;
  final String alamat;
  final String kelas;
  final String ttl;
  const Tugasnavigator2({super.key, required this.nama, required this.alamat, required this.kelas, required this.ttl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman 2'),
      backgroundColor: Colors.pink[100]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Nama: $nama"),
            SizedBox(height: 20),
            Text("TTL: $ttl"),
            SizedBox(height: 20),
            Text("Alamat: $alamat"),
            SizedBox(height: 20),
            Text("Kelas: $kelas"),
            SizedBox(height: 40),
            
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink[100],
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.arrow_back),
              label: const Text('Kembali'),
            ),
          ]
        )
      ),
    );
  }
}