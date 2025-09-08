import 'package:flutter/material.dart';

class LayoutListview extends StatelessWidget {
  const LayoutListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Listview Vertikal')),
      body: ListView(
        children: <Widget>[
          ListTile(leading: Icon(Icons.map), title: Text('Map')),
          ListTile(leading: Icon(Icons.photo_album), title: Text('Album')),
          ListTile(leading: Icon(Icons.phone), title: Text('Phone')),
        ],
      )
    );
  }
}