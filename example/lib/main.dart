import 'package:flutter/material.dart';
import 'package:rc_spacio/rc_spacio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("rc_spacio example"),
        ),
        body: const Center(
          child: SpacioColumn(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            topSpacing: 20.0, // Space at the top of the column
            bottomSpacing: 15.0, // Space at the bottom of the column
            internalSpacing: 10.0, // Space between each child in the column
            children: [
              Text('SpacioColumn Item 1'),
              Text('SpacioColumn Item 2'),
              Text('SpacioColumn Item 3'),
              Divider(),
              SpacioRow(
                leftSpacing: 20.0, // Space at the left of the row
                rightSpacing: 15.0, // Space at the right of the row
                internalSpacing: 10.0, // Space between each child in the row
                children: [
                  Text('SpacioRow Item 2'),
                  Text('SpacioRow Item 1'),
                  Text('SpacioRow Item 3'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
