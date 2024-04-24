import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'title',
      theme: ThemeData(primarySwatch: Colors.purple),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('custom Font'),
        backgroundColor: Colors.deepPurple,
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
      body: Container(
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
              style: TextStyle(fontSize: 40, fontFamily: "Oi-Regular"),
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
