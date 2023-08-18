import 'package:flutter/material.dart';

void main() => runApp(const MainApp());

var counter = 0;

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(counter.toString()),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            counter++;
          },
        ),
      ),
    );
  }
}
