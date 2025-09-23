import 'package:flutter/material.dart';

class Latihan3 extends StatelessWidget {
  const Latihan3({super.key});

  @override
  Widget build(BuildContext context) {
    const int itemCount = 4;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Spaced List'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // LayoutBuilder memberikan informasi tinggi maximum parent
          return SingleChildScrollView(
            // Agar list bisa di scroll jika tinggi layar terbatas
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: List.generate(
                  itemCount,
                  (index) {
                    final colors = [Colors.blue, Colors.green, Colors.amberAccent, Colors.orange];
                    return Card(
                      margin: const EdgeInsets.all(8),
                      color: colors[index % colors.length], 
                      child: SizedBox(
                        height: 100,
                        child: Center(child: Text('Item $index',
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)))
                      )
                    );
                  } 
                )
              )
            ),
          );
        }
      )
    );
  }
}
