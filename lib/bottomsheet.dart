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
  void showBottom() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            child: Row(
              children: [
                Text('Are ypu sure to exit'),
                TextButton(onPressed: (){}, child: ),
              ],
            ),
          );
        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /*leading: IconButton(
            onPressed: () {
              print('Icon is clicked');
            },
            icon: Icon(Icons.menu)),*/
        title: Text('bottomsheet'),
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
        child: ElevatedButton(
          onPressed: showBottom,
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.blue),
            overlayColor: MaterialStatePropertyAll(Colors.red),
            foregroundColor: MaterialStatePropertyAll(Colors.white),
          ),
          child: Text(
            'exit',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
