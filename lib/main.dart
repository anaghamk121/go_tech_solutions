

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:go_tech_solutions/page_1.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();


  if (Platform.isAndroid){
    await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Page Navigation Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Page1(),
    );
  }
}
