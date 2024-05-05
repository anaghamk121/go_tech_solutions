import 'package:flutter/material.dart';
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Screen Recording Disabled',
              style: TextStyle(fontSize: 18.0),
            ),
            const Text(
              'Screen Shot Disabled:',
              style: TextStyle(fontSize: 18.0),
            ),
            const Image(
              image: AssetImage("images/photography_792947.png"),
              height: 60,
              width: 60,
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
