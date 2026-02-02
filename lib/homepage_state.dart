import 'package:flutter/material.dart';
import 'package:flutter_application_2/providers/counter_provider.dart';
import 'package:provider/provider.dart';

class HomepageState extends StatelessWidget {
  const HomepageState({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = context.watch<CounterProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Manajemen State Provider', 
        style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.pink[100],
      ),
      body: Center(
        child: Text(
          'Nilai Counter: ${counter.count}',
          style: const TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counter.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}