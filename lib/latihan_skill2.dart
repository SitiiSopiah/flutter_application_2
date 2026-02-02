import 'package:flutter/material.dart';

class LatihanSkill2 extends StatelessWidget {
  final String nama;
  final String Kelas;
  final String Hobi;
  final String Jurusan;
  const LatihanSkill2({
    super.key,
    required this.nama,
    required this.Kelas,
    required this.Hobi,
    required this.Jurusan,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
        backgroundColor: Colors.pink[100],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Nama: $nama', style: TextStyle(fontSize: 18)),
            Text('Kelas: $Kelas', style: TextStyle(fontSize: 18)),
            Text('Hobi: $Hobi', style: TextStyle(fontSize: 18)),
            Text('Jurusan: $Jurusan', style: TextStyle(fontSize: 18)),

            const SizedBox(height: 20),

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
          ],
        ),
      ),
    );
  }
}
