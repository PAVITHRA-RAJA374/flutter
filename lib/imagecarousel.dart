import 'package:flutter/material.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
                AssetImage('assets/images/2.png'),
                AssetImage('assets/images/3.png'),
                AssetImage('assets/images/4.png'),
              ]),
        ),
      ),
    );
  }
}
