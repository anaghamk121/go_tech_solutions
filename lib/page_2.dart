

import 'package:flutter/material.dart';
import 'package:go_tech_solutions/page_3.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => Page3()),
             );
          },
          child: const Text('Go to Page 3')
        ),
      ),
    );
  }
}