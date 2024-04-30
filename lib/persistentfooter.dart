import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              print('Icon is clicked');
            },
            icon: const Icon(Icons.menu)),
        title: const Text('app bar'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      persistentFooterButtons: [
        ElevatedButton(
          onPressed: () {
            print('alarm button clicked');
          },
          child: const Icon(
            Icons.alarm,
            color: Colors.red,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            print('add button clicked');
          },
          child: const Icon(
            Icons.add,
            color: Colors.red,
          ),
        ),
      ],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.blue,
        currentIndex: 2,
        items: const [
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
