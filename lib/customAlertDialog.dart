import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /*leading: IconButton(
            onPressed: () {
              print('Icon is clicked');
            },
            icon: Icon(Icons.menu)),*/
        title: Text('Custom Alert Dialog'),
        backgroundColor: Colors.blue,
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
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            String title = "Message";
            String msg = "Are you sure to submit";
            showalertdialog(context, title, msg);
          },
          child: Text(
            'Submit',
            style: TextStyle(
                fontStyle: FontStyle.italic, fontSize: 20, color: Colors.white),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.blue),
            overlayColor:
                MaterialStatePropertyAll(Color.fromARGB(255, 238, 41, 41)),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            ),
          ),
        ),
      ),
    );
  }
}

showalertdialog(BuildContext context, String title, String msg) {
  Widget okbtn = TextButton(
    onPressed: () => Navigator.pop(context),
    child: Text(
      'Sure',
      style: TextStyle(color: Color.fromARGB(255, 5, 119, 64)),
    ),
  );
  Widget cancelbtn = TextButton(
    onPressed: () => Navigator.pop(context),
    child: Text(
      'Cancel',
      style: TextStyle(color: Colors.red),
    ),
  );
  AlertDialog alert = AlertDialog(
    title: Text(
      title,
      style: TextStyle(color: Color.fromARGB(255, 5, 119, 64)),
    ),
    content: Text(msg),
    actions: [
      okbtn,
      cancelbtn,
    ],
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      });
}
