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
  double rate = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('slider'),
        backgroundColor: Colors.blue,
        /*actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],*/
      ),
      body: Center(
        child: Slider(
          value: rate,
          onChanged: (newRate) {
            setState(() {
              rate = newRate;
            });
          },
          min: 0,
          max: 100,
          divisions: 5,
          label: "$rate",
          activeColor: Colors.blue,
          thumbColor: Colors.red,
          overlayColor: MaterialStatePropertyAll(Colors.purple),
          inactiveColor: Colors.deepPurpleAccent,
        ),
      ),
    );
  }
}
