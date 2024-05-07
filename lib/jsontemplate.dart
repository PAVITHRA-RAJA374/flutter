import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List _items = [];
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/json/sample.json');
    final data = await jsonDecode(response);
    setState(() {
      _items = data["items"];
      print("Number of items ${_items.length}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Json list view'),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          _items.isNotEmpty
              ? Expanded(
                  child: ListView.builder(
                    itemCount: _items.length,
                    itemBuilder: (context, index) {
                      return Card(
                        key: ValueKey(_items[index]["id"]),
                        margin: EdgeInsets.all(10),
                        child: ListTile(
                          leading: Text(_items[index]["id"]),
                          title: Text(_items[index]["name"]),
                          subtitle: Text(_items[index]["id"]),
                        ),
                      );
                    },
                  ),
                )
              : ElevatedButton(
                  onPressed: () {
                    readJson();
                  },
                  child: Center(
                    child: Text('load json'),
                  ))
        ],
      ),
    );
  }
}
