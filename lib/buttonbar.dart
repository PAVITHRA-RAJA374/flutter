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
        title: Text('button bar'),
        backgroundColor: Colors.blue,
        actions: [],
      ),
      body: Container(
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.people),
            ),
            TextButton(
              onPressed: () {},
              child: Text('login/sign-up'),
              style: ButtonStyle(
                foregroundColor: MaterialStatePropertyAll(Colors.black),
                backgroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 193, 217, 230)),
                overlayColor: MaterialStatePropertyAll(Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
