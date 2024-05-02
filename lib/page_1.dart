
import 'package:flutter/material.dart';
import 'package:go_tech_solutions/page_2.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Page2()),
            );
          },
          child: const Text('Go to Page 2'),
        ),
      ),
    );
  }
}
