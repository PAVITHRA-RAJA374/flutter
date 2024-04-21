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
  String _name = '';

  void _onChanged(String value) {
    setState(() {
      _name = value;
    });
  }

  void _onSubmit(String value) {
    setState(() {
      _name = value;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /*leading: IconButton(
            onPressed: () {
              print('Icon is clicked');
            },
            icon: Icon(Icons.menu)),*/
        title: Text('text field'),
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
      body: Column(
        children: [
          Text(_name),
          TextField(
            decoration: new InputDecoration(
              labelText: 'NAME',
              hintText: 'Enter your full name',
              icon: new Icon(Icons.call),
            ),
            autocorrect: true,
            onChanged: _onChanged,
            onSubmitted: _onSubmit,
            keyboardType: TextInputType.text,
          ),
          TextField(
            decoration: new InputDecoration(
              labelText: 'MOBILE NO.',
              hintText: 'Enter your mobile number',
              icon: new Icon(Icons.call),
            ),
            autocorrect: true,
            onChanged: _onChanged,
            onSubmitted: _onSubmit,
            keyboardType: TextInputType.number,
          ),
        ],
      ),
    );
  }
}
