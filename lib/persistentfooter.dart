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
        title: Text('app bar'),
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
      persistentFooterButtons: [
        ElevatedButton(
          onPressed: () {
            print('alarm button clicked');
          },
          child: Icon(
            Icons.alarm,
            color: Colors.red,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            print('add button clicked');
          },
          child: Icon(
            Icons.add,
            color: Colors.red,
          ),
        ),
      ],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.blue,
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(label: 'home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'contact'),
          BottomNavigationBarItem(
              label: 'shop', icon: Icon(Icons.shopping_bag)),
        ],
        onTap: (int index) {
          print(index.toString());
        },
      ),
    );
  }
}
