import 'package:flutter/material.dart';
import 'package:flutter_application_2/homepage_state.dart';
import 'package:flutter_application_2/providers/counter_provider.dart';
// import 'package:flutter_application_2/tugas_responsif.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: const MainApp(),
    )
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Aplikasi flutter', 
      home: HomepageState());
  }
}
