import 'package:flutter/material.dart';
import 'package:flutter_application_2/profil.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp( title: 'Aplikasi flutter',
      home: Profil()
    );
  }
}
