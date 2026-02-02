import 'package:flutter/material.dart';
import 'package:flutter_application_2/tugasnavigator2.dart';

class Tugasnavigator extends StatelessWidget {
  const Tugasnavigator({super.key});

  @override
  Widget build(BuildContext context) {
    final String nama = "Siti Sopiah";
    final String alamat = "Kp. Cidulang";
    final String kelas = "XI RPL 2";
    final String ttl = "Tasikmalaya, 16 Juni 2009";
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman 1'),
        backgroundColor: Colors.pink[100],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'SITI SOPIAH',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 15),

            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => Tugasnavigator2(nama: nama, alamat: alamat, kelas: kelas, ttl: ttl)),
                );
              }, 
              child: Text("LIHAT BIODATA"),
            ),
          ],
        ),
      ),
    );
  }
}