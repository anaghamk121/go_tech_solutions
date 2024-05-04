import 'package:flutter/material.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:go_tech_solutions/page_3.dart';

class Page2 extends StatefulWidget {
  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {


  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Page 2'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'Screen Recording Disabled:',
              style: TextStyle(fontSize: 18.0),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page3()),
                  );
                },
                child: const Text('Go to Page 3')),
          ],
        ),
      ),
    );
  }
}

//
// import 'package:flutter/material.dart';
// import 'package:flutter_windowmanager/flutter_windowmanager.dart';
//
//
// class Page2 extends StatefulWidget {
//   @override
//   _ScreenRecordingDemoState createState() => _ScreenRecordingDemoState();
// }
//
// class _ScreenRecordingDemoState extends State<Page2> {
//   bool screenRecordingDisabled = false;
//
//   @override
//   void initState() {
//     super.initState();
//     disableScreenRecording();
//   }
//
//   Future<void> disableScreenRecording() async {
//     try {
//       await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
//       setState(() {
//         screenRecordingDisabled = true;
//       });
//     } catch (e) {
//       print('Failed to disable screen recording: $e');
//       setState(() {
//         screenRecordingDisabled = false;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Screen Recording Disable Demo'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Screen Recording Disabled:',
//               style: TextStyle(fontSize: 18.0),
//             ),
//             SizedBox(height: 10.0),
//             Text(
//               screenRecordingDisabled ? 'Yes' : 'No',
//               style: TextStyle(
//                 fontSize: 24.0,
//                 fontWeight: FontWeight.bold,
//                 color: screenRecordingDisabled ? Colors.green : Colors.red, // Updated here
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
