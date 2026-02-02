import 'package:flutter/material.dart';

class Detailpage extends StatelessWidget {
  final String nama;
  final String kelas;
  final String hobi;
  final String jurusan;
  const Detailpage({
    super.key,
    required this.nama,
    required this.kelas,
    required this.hobi,
    required this.jurusan,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
        backgroundColor: Colors.pink[100],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text('Nama: $nama', style: TextStyle(fontSize: 18)),
            Text('Kelas: $kelas', style: TextStyle(fontSize: 18)),
            Text('Hobi: $hobi', style: TextStyle(fontSize: 18)),
            Text('Jurusan: $jurusan', style: TextStyle(fontSize: 18)),

            const SizedBox(height: 20),

            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.arrow_back),
              label: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}
