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
  bool? a = false;
  bool? b = false;
  bool? c = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              print('Icon is clicked');
            },
            icon: Icon(Icons.menu)),
        title: Text('check box'),
        backgroundColor: Colors.purple,
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
        child: Row(
          children: [
            Text('1'),
            Checkbox(
              value: a,
              onChanged: (bool? value) {
                setState(() {
                  a = value;
                });
              },
            ),
            Text('2'),
            Checkbox(
              value: b,
              onChanged: (bool? value) {
                setState(() {
                  b = value;
                });
              },
            ),
            Text('3'),
            Checkbox(
              value: c,
              onChanged: (bool? value) {
                setState(() {
                  c = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
