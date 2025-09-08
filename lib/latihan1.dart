import 'package:flutter/material.dart';

class Latihan1 extends StatelessWidget {
  const Latihan1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List dan GridView')),
      body: SingleChildScrollView(
        child: Column( crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(padding: EdgeInsets.all(8.0),
            child: Text('Menu Aplikasi', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                ListTile(leading: Icon(Icons.map), title: Text('Map')),
                ListTile(leading: Icon(Icons.photo_album), title: Text('Album')),
                ListTile(leading: Icon(Icons.phone), title: Text('Phone')),
              ],
            ),
            const Padding(padding: EdgeInsets.all(8.0),
            child: Text('Warna Horizontal', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(width: 160, color: Colors.red),
                  Container(width: 160, color: Colors.blue),
                  Container(width: 160, color: Colors.green),
                  Container(width: 160, color: Colors.yellow),
                  Container(width: 160, color: Colors.orange),
                ],
              )
            ),
            const Padding(padding: EdgeInsets.all(8.0),
              child: Text('Grid Item', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            GridView.count(crossAxisCount: 2,
              shrinkWrap: true,
              physics: const  NeverScrollableScrollPhysics(),
              children: List.generate(6, (index) {
                return Card(
                  color: Colors.grey[200],
                  child: Center(
                    child: Text('Item $index', style: TextStyle(fontSize: 16)),
                  ),
                );
              })
            ),
          ],
        ),
      ),
    );
  }
}