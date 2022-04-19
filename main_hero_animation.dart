import 'package:flutter/material.dart';

const img = 'https://picsum.photos/250?image=9';

void main() {
  runApp(const MaterialApp(title: 'Navigation Basics', home: HomeScreen()));
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('about'),
      ),
      body: Hero(
        tag: img,
        child: Image.network(img),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Flutter is Fun!'),
        ),
        body: IconButton(
          icon: Hero(
            tag: img,
            child: Image.network(img),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => AboutScreen(),
              ),
            );
          },
        ));
  }
}
