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
        title: Text('stack and positioned'),
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
        child: Container(
          height: 500,
          width: 400,
          color: Colors.pink,
          child: Stack(
            //fit: StackFit.expand,
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 350,
                width: 200,
                color: Colors.amber,
              ),
              Positioned(
                  top: -50,
                  right: 0,
                  width: 250,
                  child: Container(
                    height: 150,
                    width: 100,
                    color: Colors.greenAccent,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
