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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated container'),
        backgroundColor: Colors.purple,
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
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 1),
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
              style: const ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(Color.fromARGB(255, 5, 119, 64)),
                overlayColor:
                    MaterialStatePropertyAll(Color.fromARGB(255, 238, 41, 41)),
              ),
              child: const Text(
                'print',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                    color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Bordersize();
              },
              style: const ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(Color.fromARGB(255, 5, 119, 64)),
                overlayColor:
                    MaterialStatePropertyAll(Color.fromARGB(255, 238, 41, 41)),
              ),
              child: const Text(
                'bordersize',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                    color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                BorderRadius();
              },
              style: const ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(Color.fromARGB(255, 5, 119, 64)),
                overlayColor:
                    MaterialStatePropertyAll(Color.fromARGB(255, 238, 41, 41)),
              ),
              child: const Text(
                'borderradius',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
