import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late WebViewController _controller;
  void goback() async {
    if (await _controller.canGoBack()) {
      await _controller.goBack();
    }
  }

  void goforward() async {
    if (await _controller.canGoForward()) {
      await _controller.goForward();
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              print('Icon is clicked');
            },
            icon: Icon(Icons.menu)),
        title: Text('Web view'),
        backgroundColor: Color(0xFF04AA6D),
        actions: [
          IconButton(
            onPressed: goback,
            icon: Icon(Icons.arrow_back),
          ),
          IconButton(
            onPressed: goforward,
            icon: Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: SafeArea(
        child: WebView(
          initialUrl: 'https://www.w3schools.com/',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController web) {
            _controller = web;
          },
        ),
      ),
    );
  }
}
