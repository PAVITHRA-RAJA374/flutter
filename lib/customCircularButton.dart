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
        title: Text('custom circular button'),
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
        child: Column(
          children: [
            circularbutton(
              w: 60,
              h: 60,
              c: Colors.red,
              i: Icon(Icons.add, color: Colors.white),
              onClick: () {
                print('Button clicked');
              },
            ),
            circularbutton(
              w: 60,
              h: 60,
              c: Colors.red,
              i: Icon(Icons.login, color: Colors.white),
              onClick: () {
                print('Button clicked');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class circularbutton extends StatelessWidget {
  final double w;
  final double h;
  final Color c;
  final Icon i;
  final VoidCallback onClick;

  const circularbutton(
      {super.key,
      required this.w,
      required this.h,
      required this.c,
      required this.i,
      required this.onClick});
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: c, shape: BoxShape.circle),
      width: w,
      height: h,
      child: IconButton(onPressed: onClick, icon: i),
    );
  }
}
