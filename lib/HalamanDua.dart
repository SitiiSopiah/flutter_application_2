import 'package:flutter/material.dart';
import 'package:flutter_application_2/HalamanTiga.dart';

class Halamandua extends StatelessWidget {
  final String nama;
  final String alamat;
  final String kelas;
  const Halamandua({super.key, required this.nama, required this.alamat, required this.kelas});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman 2')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Halo, $nama!"),
            SizedBox(height: 20),
            Text("$alamat"),
            SizedBox(height: 20),
            Text("$kelas"),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              }, 
              child: Text('Kembali ke halaman sebelumnya'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => Halamantiga()),
                );
              }, 
              child: Text("Pergi ke Halaman Ketiga"),
            ),
          ],
        ),
      ),
    );
  }
}