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
        /*leading: IconButton(
            onPressed: () {
              print('Icon is clicked');
            },
            icon: Icon(Icons.menu)),*/
        title: Text('image'),
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
      body: Container(
        height: 150,
        width: double.infinity,
        child: Image(image: AssetImage('assets/images/xplorebg.png')),
      ),
    );
  }
}
