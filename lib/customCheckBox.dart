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
  bool? a = false;
  bool? b = false;
  bool? c = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              print('Icon is clicked');
            },
            icon: const Icon(Icons.menu)),
        title: const Text('custom check box'),
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
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            customCheckBox('A', a),
            customCheckBox('B', b),
            customCheckBox('C', c),
          ],
        ),
      ),
    );
  }

  Column customCheckBox(String x, bool? v) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(x),
        Checkbox(
            value: v,
            onChanged: (bool? value) {
              setState(() {
                switch (x) {
                  case 'A':
                    {
                      a = value;
                      print(a);
                    }
                  case 'B':
                    {
                      b = value;
                      print(b);
                    }
                  case 'C':
                    {
                      c = value;
                      print(c);
                    }
                }
              });
            })
      ],
    );
  }
}
