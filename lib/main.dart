// import 'dart:io';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_windowmanager/flutter_windowmanager.dart';
// import 'package:go_tech_solutions/page_1.dart';
//
// void main() async {
//   runApp(const MyApp());
//   WidgetsBinding.instance.addPostFrameCallback((timeStamp) async{
//     if (Platform.isAndroid) {
//       await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
//       await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_KEEP_SCREEN_ON);
//
//     }
//   });
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(debugShowCheckedModeBanner: false,
//       title: 'Page Navigation Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Page1(),
//     );
//   }
// }

//
// import 'dart:io';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart'; // Import SystemChannels
// import 'package:flutter_windowmanager/flutter_windowmanager.dart';
// import 'package:go_tech_solutions/page_1.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized(); // Ensure WidgetsBinding is initialized
//   SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive, overlays: []); // Hide system overlays
//   runApp(const MyApp());
//   WidgetsBinding.instance.addPostFrameCallback((timeStamp) async{
//     if (Platform.isAndroid) {
//       await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
//       await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_KEEP_SCREEN_ON);
//     }
//   });
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Page Navigation Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Page1(),
//     );
//   }
// }
//
//
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:go_tech_solutions/page_1.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive, overlays: []);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]); // Lock orientation to portrait mode

  runApp(const MyApp());

  WidgetsBinding.instance!.addPostFrameCallback((timeStamp) async{
    if (Platform.isAndroid) {
      await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
      await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_KEEP_SCREEN_ON);
    }
  });
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

//
// import 'dart:async';
// import 'dart:io';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_windowmanager/flutter_windowmanager.dart';
// import 'package:go_tech_solutions/page_1.dart';
//
// void main() async {
//   runApp(const MyApp());
//
//   // Add a check for screen recording periodically
//   Timer.periodic(Duration(seconds: 5), (timer) async {
//     bool isRecording = await FlutterWindowManager.isScreenRecordEnabled;
//     if (isRecording) {
//       // If screen recording is detected, take action here
//       print("Screen recording detected!");
//       // You can choose to show an alert, log the event, or take other actions
//     }
//   });
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Page Navigation Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Page1(),
//     );
//   }
// }
