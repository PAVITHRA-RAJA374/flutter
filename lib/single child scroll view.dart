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
        title: Text('single child scroll view'),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.red,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              color: Colors.blue,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              color: Colors.yellow,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              color: Colors.purple,
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                child: Row(
                  children: [
                    Container(
                      height: 200,
                      width: 100,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 200,
                      width: 150,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 200,
                      width: 150,
                      color: Colors.purple,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 200,
                      width: 150,
                      color: Colors.orange,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
