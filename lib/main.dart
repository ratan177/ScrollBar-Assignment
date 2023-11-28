// ignore_for_file: prefer_const_constructors

import 'package:example/View/explain.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black26,
          title: Text(
            'Horizontal Scrollable Bar',
          ),
        ),
        body: HorizontalScrollableBar(),
      ),
    );
  }
}
