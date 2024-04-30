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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /*leading: IconButton(
            onPressed: () {
              print('Icon is clicked');
            },
            icon: Icon(Icons.menu)),*/
        title: const Text('text field'),
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
      body: Column(
        children: [
          Text(_name),
          TextField(
            decoration: const InputDecoration(
              labelText: 'NAME',
              hintText: 'Enter your full name',
              icon: Icon(Icons.call),
            ),
            autocorrect: true,
            onChanged: _onChanged,
            onSubmitted: _onSubmit,
            keyboardType: TextInputType.text,
          ),
          TextField(
            decoration: const InputDecoration(
              labelText: 'MOBILE NO.',
              hintText: 'Enter your mobile number',
              icon: Icon(Icons.call),
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
