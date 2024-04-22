import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new Homepage(),
  ));
}

class Homepage extends StatefulWidget {
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /*leading: IconButton(
            onPressed: () {
              print('Icon is clicked');
            },
            icon: Icon(Icons.menu)),*/
        title: Text('outline button'),
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
      body: Center(
        child: OutlinedButton(
          onPressed: () {},
          child: Text(
            'Cancel',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.orange,
            ),
          ),
          style: ButtonStyle(
              overlayColor: MaterialStatePropertyAll(Colors.red),
              side: MaterialStatePropertyAll(BorderSide(
                  color: Colors.blue, width: 5, style: BorderStyle.solid))),
        ),
      ),
    );
  }
}
