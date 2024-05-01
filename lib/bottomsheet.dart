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
  void showBottom() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Are you sure to exit'),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'yes',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /*leading: IconButton(
            onPressed: () {
              print('Icon is clicked');
            },
            icon: Icon(Icons.menu)),*/
        title: const Text('bottomsheet'),
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
        child: ElevatedButton(
          onPressed: showBottom,
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.blue),
            overlayColor: MaterialStatePropertyAll(Colors.red),
            foregroundColor: MaterialStatePropertyAll(Colors.white),
          ),
          child: const Text(
            'exit',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
