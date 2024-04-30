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
        /*leading: IconButton(
            onPressed: () {
              print('Icon is clicked');
            },
            icon: Icon(Icons.menu)),*/
        title: const Text('single child scroll view'),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.red,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              color: Colors.blue,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              color: Colors.yellow,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              color: Colors.purple,
            ),
            const SizedBox(
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
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 200,
                      width: 150,
                      color: Colors.red,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 200,
                      width: 150,
                      color: Colors.purple,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 200,
                      width: 150,
                      color: Colors.orange,
                    ),
                    const SizedBox(
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
