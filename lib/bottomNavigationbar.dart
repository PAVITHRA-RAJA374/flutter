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
  int i = 0;
  final tabs = [
    Center(
      child: Text('home'),
    ),
    Center(
      child: Text('search'),
    ),
    Center(
      child: Text('profile'),
    ),
    Center(
      child: Text('camera'),
    ),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('bottom Navigation bar'),
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
      body: tabs[i],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: i,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              backgroundColor: Colors.purple,
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              backgroundColor: Colors.pink,
              label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              backgroundColor: Colors.pink,
              label: 'Person'),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              backgroundColor: Colors.purple,
              label: 'Camera'),
        ],
        onTap: (current_index) {
          setState(() {
            i = current_index;
          });
        },
      ),
    );
  }
}
