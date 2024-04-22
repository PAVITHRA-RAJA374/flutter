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
        title: Text('alert dialog'),
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
          onPressed: () {},
          child: Text(
            'print',
            style: TextStyle(
                fontStyle: FontStyle.italic, fontSize: 20, color: Colors.white),
          ),
          style: ButtonStyle(
            backgroundColor:
                MaterialStatePropertyAll(Color.fromARGB(255, 5, 119, 64)),
            overlayColor:
                MaterialStatePropertyAll(Color.fromARGB(255, 238, 41, 41)),
          ),
        ),
      ),
    );
  }
}
