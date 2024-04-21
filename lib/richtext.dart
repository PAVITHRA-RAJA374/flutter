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
        title: Text('rich text'),
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
        child: RichText(
          text: TextSpan(
              text: 'Flutter',
              style: TextStyle(
                color: Colors.red,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: ' by',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    decorationStyle: TextDecorationStyle.wavy,
                    decorationThickness: 3,
                  ),
                ),
                TextSpan(
                    text: ' GOOGLE',
                    style: TextStyle(
                      decorationColor: Colors.black,
                      decorationStyle: TextDecorationStyle.double,
                    )),
              ]),
        ),
      ),
    );
  }
}
