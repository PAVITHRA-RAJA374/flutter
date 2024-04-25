import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<int> data = [];
  Future loadList() async {
    await Future.delayed(Duration(milliseconds: 500));
    final random = Random();
    final data = List.generate(20, (index) => random.nextInt(100));
    setState(() {
      this.data = data;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    loadList();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              print('Icon is clicked');
            },
            icon: Icon(Icons.menu)),
        title: Text('refresh indiacator'),
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
      body: Container(
          child: Container(
        child: RefreshIndicator(
          color: Colors.white,
          backgroundColor: Colors.cyan,
          strokeWidth: 3,
          edgeOffset: 0,
          displacement: 100,
          onRefresh: loadList,
          child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return ListTile(
                    title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data[index].toString(),
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ));
              }),
        ),
      )),
    );
  }
}
