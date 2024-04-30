import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PageController page = PageController(initialPage: 0);
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page view'),
        backgroundColor: Colors.purple,
        actions: [
          IconButton(
            onPressed: () {
              page.animateToPage(--pageIndex,
                  duration: const Duration(
                    milliseconds: 400,
                  ),
                  curve: Curves.linearToEaseOut);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          IconButton(
            onPressed: () {
              page.animateToPage(++pageIndex,
                  duration: const Duration(
                    milliseconds: 400,
                  ),
                  curve: Curves.linearToEaseOut);
            },
            icon: const Icon(Icons.arrow_forward),
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
            child: const Center(
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
            child: const Center(
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
            child: const Center(
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
            child: const Center(
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
