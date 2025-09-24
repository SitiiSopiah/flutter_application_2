import 'package:flutter/material.dart';

class Latihan_spacedlonglist extends StatelessWidget {
  const Latihan_spacedlonglist({super.key});

  @override
  Widget build(BuildContext context) {
    const int itemCount = 4;

    return Scaffold(
      appBar: AppBar(
        title: Text('Spaced & Long List'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            LayoutBuilder(builder: (context, constraints) {
              return ConstrainedBox(constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: List.generate(itemCount, (index) {
                  final colors = [
                    Colors.blue, Colors.green, Colors.amber, Colors.orange
                  ];

                  return Card(
                    color: colors[index],
                    margin: const EdgeInsets.all(8),
                    child: SizedBox(
                      height: 100,
                      child: Center(
                        child: Text(
                          'Item ${index + 1}',
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  );
                }),
              ),);
            }),

            const Divider(thickness: 2),

            const Padding(padding: EdgeInsetsGeometry.all(8.0),
              child: Text(
                  "List Panjang 100 Item",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
            ),
            SizedBox(
              height: 400,
              child: ListView.builder(itemBuilder: (context, index) {
                Color textColor;
                if (index % 10 == 0) {
                  textColor = Colors.red;
                } else if (index % 10 == 1) {
                  textColor = Colors.blue;
                } else if (index % 10 == 2) {
                  textColor = Colors.green;
                } else if (index % 10 == 3) {
                  textColor = Colors.orange;
                } else {
                  textColor = Colors.black;
                }

                return ListTile(
                  leading: const Icon(Icons.star),
                  title: Text(
                    "Item ${index + 1}",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: textColor,
                    ),
                  ),
                );
              }),
            )
          ],
        )
      )
    );
  }
}