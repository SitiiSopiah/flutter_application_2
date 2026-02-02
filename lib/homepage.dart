import 'package:flutter/material.dart';
import 'package:flutter_application_2/detailpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.pink[100],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(3),
              child: ClipOval(
                child: Image.asset(
                  'image/foto.png',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),

            Text(
              'SITI SOPIAH',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Text(
              'Seorang pelajar di SMK YPC Tasikmalaya | Kelas XI RPL 2',
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink[100],
                    foregroundColor: Colors.white,
                  ),
                  icon: const Icon(Icons.call),
                  label: const Text('Call'),
                ),

                const SizedBox(width: 10),

                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink[100],
                    foregroundColor: Colors.white,
                  ),
                  icon: const Icon(Icons.call),
                  label: const Text('Call'),
                ),

                const SizedBox(width: 10),

                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink[100],
                    foregroundColor: Colors.white,
                  ),
                  icon: const Icon(Icons.call),
                  label: const Text('Call'),
                ),
              ],
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Detailpage(
                      nama: "Siti Sopiah",
                      kelas: "XI RPL 2",
                      hobi: "Membaca | Membantu orang lain",
                      jurusan: "Rekayasa Perangkat Lunak",
                    ),
                  ),
                );
              },
              child: const Text('Lihat Detail'),
            ),
          ],
        ),
      ),
    );
  }
}
