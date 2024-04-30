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
  bool? a = false;
  bool? b = false;
  bool? c = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              print('Icon is clicked');
            },
            icon: const Icon(Icons.menu)),
        title: const Text('check box'),
        backgroundColor: Colors.purple,
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
      body: Center(
        child: Row(
          children: [
            const Text('1'),
            Checkbox(
              value: a,
              onChanged: (bool? value) {
                setState(() {
                  a = value;
                });
              },
            ),
            const Text('2'),
            Checkbox(
              value: b,
              onChanged: (bool? value) {
                setState(() {
                  b = value;
                });
              },
            ),
            const Text('3'),
            Checkbox(
              value: c,
              onChanged: (bool? value) {
                setState(() {
                  c = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
