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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              print('Icon is clicked');
            },
            icon: Icon(Icons.menu)),
        title: Text('app bar'),
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
      body: Center(
        child: Text(
          'Mobile App ',
          style: TextStyle(
            fontSize: 25,
            color: Colors.red,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            letterSpacing: 2,
            wordSpacing: 5,
            backgroundColor: Color.fromARGB(228, 238, 197, 143),
            shadows: [
              Shadow(
                color: Colors.white,
                offset: Offset(4, 1),
                blurRadius: 3,
              )
            ],
            decoration: TextDecoration.underline,
            decorationColor: Colors.black,
            decorationStyle: TextDecorationStyle.solid,
          ),
        ),
      ),
    );
  }
}
