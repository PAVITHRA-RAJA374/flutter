import 'package:flutter/material.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyApp(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('image carousel'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 300,
          child: AnotherCarousel(
              boxFit: BoxFit.fill,
              autoplay: false,
              dotColor: Colors.red,
              dotBgColor: Colors.transparent,
              dotSize: 6,
              dotSpacing: 20,
              images: const [
                AssetImage('assets/images/1.jpg'),
                AssetImage('assets/images/1.jpg'),
                AssetImage('assets/images/1.jpg'),
                AssetImage('assets/images/1.jpg'),
              ]),
        ),
      ),
    );
  }
}
