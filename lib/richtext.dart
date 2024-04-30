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
        title: const Text('rich text'),
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
      body: Center(
        child: RichText(
          text: const TextSpan(
              text: 'Flutter',
              style: TextStyle(
                color: Colors.red,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: ' by',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    decorationStyle: TextDecorationStyle.wavy,
                    decorationThickness: 3,
                  ),
                ),
                TextSpan(
                    text: ' GOOGLE',
                    style: TextStyle(
                      decorationColor: Colors.black,
                      decorationStyle: TextDecorationStyle.double,
                    )),
              ]),
        ),
      ),
    );
  }
}
