import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _v = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              print('Icon is clicked');
            },
            icon: Icon(Icons.menu)),
        title: Text('icon button'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
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
            icon: Icon(Icons.volume_up),
            iconSize: 50,
            color: Colors.red,
            style: ButtonStyle(
              overlayColor: MaterialStatePropertyAll(Colors.blue),
            ),
          ),
          Text(
            'vol : ${_v}',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
