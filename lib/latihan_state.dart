import 'package:flutter/material.dart';

class LatihanState extends StatefulWidget {
  const LatihanState({super.key});

  @override
  State<LatihanState> createState() => _LatihanStateState();
}

class _LatihanStateState extends State<LatihanState> {
  int counter = 0;

  void increment(){
    setState(() {
      counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan State'),
        backgroundColor: Colors.pink[200],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nilai counter saat ini: $counter'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: increment,
              child: const Text('Tambah Counter'),

              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink[200],
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}