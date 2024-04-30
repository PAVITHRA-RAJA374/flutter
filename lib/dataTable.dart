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
        title: const Text('dataTable'),
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
      body: DataTable(columns: const [
        DataColumn(
            label: Text(
          'roll no',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 15),
        )),
        DataColumn(
            label: Text(
          'name',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 15),
        )),
        DataColumn(
            label: Text(
          'department',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 15),
        )),
        DataColumn(
            label: Text(
          'age',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 15),
        )),
      ], rows: const [
        DataRow(cells: [
          DataCell(Text('001')),
          DataCell(Text('Pavi')),
          DataCell(Text('IT')),
          DataCell(Text('19'))
        ]),
        DataRow(cells: [
          DataCell(Text('002')),
          DataCell(Text('Ram')),
          DataCell(Text('IT')),
          DataCell(Text('19'))
        ]),
        DataRow(cells: [
          DataCell(Text('003')),
          DataCell(Text('Kavi')),
          DataCell(Text('IT')),
          DataCell(Text('19'))
        ]),
        DataRow(cells: [
          DataCell(Text('004')),
          DataCell(Text('Raja')),
          DataCell(Text('IT')),
          DataCell(Text('19'))
        ])
      ]),
    );
  }
}
