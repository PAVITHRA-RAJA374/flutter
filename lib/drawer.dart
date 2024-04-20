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
        title: Text('app bar'),
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
        flexibleSpace: SafeArea(
          child: Icon(
            Icons.camera,
            color: Colors.pinkAccent,
            size: 30,
          ),
        ),
      ),
      drawer: Drawer(
        elevation: 20,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Pavithra'),
              accountEmail: Text('pavi@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text('profile'),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text('P'),
                )
              ],
            ),
            ListTile(
              title: Text('Inbox'),
              leading: Icon(Icons.mail),
            ),
            Divider(
              height: 0.2,
            ),
            ListTile(
              title: Text('Primary'),
              leading: Icon(Icons.inbox),
            ),
            Divider(
              height: 0.2,
            ),
            ListTile(
              title: Text('Social'),
              leading: Icon(Icons.people),
            ),
            Divider(
              height: 0.2,
            ),
            ListTile(
              title: Text('Promotions'),
              leading: Icon(Icons.local_offer),
            ),
            Divider(
              height: 0.2,
            ),
          ],
        ),
      ),
    );
  }
}
