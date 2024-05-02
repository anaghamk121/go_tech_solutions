
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_tech_solutions/page_1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page Navigation Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Page1(),
    );
  }
}
