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
          backgroundColor: Colors.blue,
          title: const Text('Flutter is Fun!'),
        ),
        body: Stack(
          children: [
            Align(
                child: Container(
                  color: Colors.green,
                  width: 50,
                  height: 50,
                ),
                alignment: Alignment.center),
            Align(
              child: Icon(Icons.verified),
              alignment: Alignment.center,
            ),
            Align(
              child: FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () {
                  print('pressed!');
                },
              ),
              alignment: Alignment.bottomRight,
            )
          ],
        ),
        drawer: Drawer(),
      ),
    );
  }
}
