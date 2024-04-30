
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /*leading: IconButton(
            onPressed: () {
              print('Icon is clicked');
            },
            icon: Icon(Icons.menu)),*/
        title: const Text('Custom Alert Dialog'),
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
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            String title = "Message";
            String msg = "Are you sure to submit";
            showalertdialog(context, title, msg);
          },
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.blue),
            overlayColor:
                MaterialStatePropertyAll(Color.fromARGB(255, 238, 41, 41)),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            ),
          ),
          child: const Text(
            'Submit',
            style: TextStyle(
                fontStyle: FontStyle.italic, fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

showalertdialog(BuildContext context, String title, String msg) {
  Widget okbtn = TextButton(
    onPressed: () => Navigator.pop(context),
    child: const Text(
      'Sure',
      style: TextStyle(color: Color.fromARGB(255, 5, 119, 64)),
    ),
  );
  Widget cancelbtn = TextButton(
    onPressed: () => Navigator.pop(context),
    child: const Text(
      'Cancel',
      style: TextStyle(color: Colors.red),
    ),
  );
  AlertDialog alert = AlertDialog(
    title: Text(
      title,
      style: const TextStyle(color: Color.fromARGB(255, 5, 119, 64)),
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
