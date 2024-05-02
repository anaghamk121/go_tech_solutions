import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_tech_solutions/page_3.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Disable screenshot and screen recording
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Page 2 (Screen Recording Disabled)'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page3()),
              );
            },
            child: const Text('Go to Page 3'),
          ),
        ),
      ),
    );
  }
}

//
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:go_tech_solutions/page_3.dart';
//
// class Page2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Disable screenshot and screen recording
//     SystemChrome.setPreferredOrientations([
//       DeviceOrientation.portraitUp,
//     ]);
//     SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
//
//     return WillPopScope(
//       onWillPop: () async => false,
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Page 2 (Screen Recording Disabled)'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => Page3()),
//                   );
//                 },
//                 child: const Text('Go to Page 3'),
//               ),
//               SizedBox(height: 20),
//               DisableScreenShotWidget(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class DisableScreenShotWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.grey),
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: Text(
//         _getDisableCodeSnippet(),
//         style: const TextStyle(
//           fontFamily: 'Courier',
//           fontSize: 16,
//         ),
//       ),
//     );
//   }
//
//   String _getDisableCodeSnippet() {
//     // Function to disable screenshot and screen recording
//     return '''
//       // Disable screenshot and screen recording
//       SystemChrome.setEnabledSystemUIOverlays([]);
//       SystemChrome.setPreferredOrientations([
//         DeviceOrientation.portraitUp,
//       ]);
//     ''';
//   }
// }
