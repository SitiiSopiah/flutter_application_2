import 'package:flutter/material.dart';
import 'package:flutter_application_2/HalamanDua.dart';
import 'package:flutter_application_2/HalamanTiga.dart';

class LatihanNavigator extends StatelessWidget {
  const LatihanNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    final String nama = "Siti Sopiah";
    final String alamat = "Jl. Cidulang No.05";
    final String kelas = "XI RPL 2";
    return Scaffold(
      appBar: AppBar(title: Text(('Halaman 1'))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => Halamandua(nama: nama, alamat: alamat, kelas: kelas)),
                );
              }, 
              child: Text("Pergi ke Halaman Kedua"),
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