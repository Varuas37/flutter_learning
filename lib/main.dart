import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override // Make code clear. We are overriding build method.
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
        
      ),
      body: Text('Hello'),
    ),
    );
  }
}
