
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _v = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              print('Icon is clicked');
            },
            icon: const Icon(Icons.menu)),
        title: const Text('icon button'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                _v += 10;
              });
            },
            icon: const Icon(Icons.volume_up),
            iconSize: 50,
            color: Colors.red,
            style: const ButtonStyle(
              overlayColor: MaterialStatePropertyAll(Colors.blue),
            ),
          ),
          Text(
            'vol : $_v',
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
