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
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            border: Border.all(width: 2),
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage(
                  'https://www.google.com/search?sca_esv=5bc86930ad7b2685&q=images&tbm=isch&source=lnms&prmd=ivsnmbtz&sa=X&ved=2ahUKEwi_mYyWkNOFAxXBSGcHHTOLCdQQ0pQJegQIERAB&biw=1366&bih=641&dpr=1#imgrc=niFX30xK9slyfM'),
              fit: BoxFit.cover,
            ),
          ),
          child: Text('hello'),
          /*child: Image.network(
              'https://www.google.com/search?sca_esv=5bc86930ad7b2685&q=images&tbm=isch&source=lnms&prmd=ivsnmbtz&sa=X&ved=2ahUKEwi_mYyWkNOFAxXBSGcHHTOLCdQQ0pQJegQIERAB&biw=1366&bih=641&dpr=1#imgrc=niFX30xK9slyfM'),
        ),*/
        ),
      ),
    );
  }
}
