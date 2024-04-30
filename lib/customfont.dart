import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'title',
      theme: ThemeData(primarySwatch: Colors.purple),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('custom Font'),
        backgroundColor: Colors.deepPurple,
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
      body: const SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'நன்றி',
              style: TextStyle(fontSize: 40, fontFamily: "Oi-Regular"),
            ),
            Text(
              'Thank you',
              style: TextStyle(fontSize: 40, fontFamily: "Oi-Regular"),
            ),
            Text(
              'Hello',
              style: TextStyle(fontSize: 40, fontFamily: "Jacquard24-Regular"),
            ),
            Text(
              'Bye',
              style: TextStyle(fontSize: 40, fontFamily: "Jacquard24-Regular"),
            ),
          ],
        ),
      ),
    );
  }
}
