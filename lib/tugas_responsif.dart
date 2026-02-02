import 'package:flutter/material.dart';

class TugasResponsif extends StatelessWidget {
  const TugasResponsif({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsif UI'),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 80,
            color: Colors.blue,
            child: const Center(
              child: Text('Header',
              style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.green,
                    child: const Center(child: Text('Menu')),
                  )
                ),
                Expanded(
                  child: Container(
                    color: Colors.orange,
                    child: const Center(child: Text('Konten')),
                  )
                ),
              ],
            )
          ),

          SizedBox(height: 35),

          Flexible(
            child: Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 100,
                    color: Colors.purple,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 200,
                    color: Colors.pink[100],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 200,
                    color: Colors.yellow,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}