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
  var w = 200.0;
  var h = 200.0;
  var b = 10.0;
  var r = 0.0;

  AnimatedFunction() {
    setState(() {
      w = w == 200 ? 20 : 200;
      h = h == 200 ? 20 : 200;
    });
  }

  Bordersize() {
    setState(() {
      b = b == 10.0 ? 20 : 10.0;
    });
  }

  BorderRadius() {
    setState(() {
      r = r == 0.0 ? 60 : 0.0;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated container'),
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
        alignment: Alignment.center,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 1),
              curve: Curves.bounceIn,
              height: h,
              width: w,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(r),
                color: Colors.blue,
                border: Border.all(
                  color: Colors.red,
                  width: b,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                AnimatedFunction();
              },
              child: Text(
                'print',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                    color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(Color.fromARGB(255, 5, 119, 64)),
                overlayColor:
                    MaterialStatePropertyAll(Color.fromARGB(255, 238, 41, 41)),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Bordersize();
              },
              child: Text(
                'bordersize',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                    color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(Color.fromARGB(255, 5, 119, 64)),
                overlayColor:
                    MaterialStatePropertyAll(Color.fromARGB(255, 238, 41, 41)),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                BorderRadius();
              },
              child: Text(
                'borderradius',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                    color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(Color.fromARGB(255, 5, 119, 64)),
                overlayColor:
                    MaterialStatePropertyAll(Color.fromARGB(255, 238, 41, 41)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
