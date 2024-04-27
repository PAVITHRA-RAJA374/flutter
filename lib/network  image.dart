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
        leading: IconButton(
            onPressed: () {
              print('Icon is clicked');
            },
            icon: Icon(Icons.menu)),
        title: Text('network image'),
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
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            border: Border.all(width: 2),
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              image: NetworkImage(
                  'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              fit: BoxFit.cover,
            ),
          ),
          child: Text(
            'hello',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          /*child: Image.network(
            'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
            fit: BoxFit.fill,
          ),*/
        ),
      ),
    );
  }
}
