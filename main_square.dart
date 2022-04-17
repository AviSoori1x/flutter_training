import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text('Flutter is Fun!'),
        ),
        body: Center(
          child: Container(
            child: const Text('Hello World '),
            margin: const EdgeInsets.all(50),
            padding: const EdgeInsets.all(10),
            color: Colors.orange,
            height: 100,
            width: 100,
          ),
        ),
      ),
    );
  }
}
