import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PageController page = PageController(initialPage: 0);
  int pageIndex = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page view'),
        backgroundColor: Colors.purple,
        actions: [
          IconButton(
            onPressed: () {
              page.animateToPage(--pageIndex,
                  duration: Duration(
                    milliseconds: 400,
                  ),
                  curve: Curves.linearToEaseOut);
            },
            icon: Icon(Icons.arrow_back),
          ),
          IconButton(
            onPressed: () {
              page.animateToPage(++pageIndex,
                  duration: Duration(
                    milliseconds: 400,
                  ),
                  curve: Curves.linearToEaseOut);
            },
            icon: Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: PageView(
        controller: page,
        scrollDirection: Axis.horizontal,
        pageSnapping: true,
        children: [
          Container(
            color: Colors.teal,
            child: Center(
              child: Text(
                'page 1',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25),
              ),
            ),
          ),
          Container(
            color: Colors.redAccent,
            child: Center(
              child: Text(
                'page 2',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25),
              ),
            ),
          ),
          Container(
            color: Colors.blue,
            child: Center(
              child: Text(
                'page 3',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25),
              ),
            ),
          ),
          Container(
            color: Colors.pink,
            child: Center(
              child: Text(
                'page 4',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
