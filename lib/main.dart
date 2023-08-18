import 'package:flutter/material.dart';
import 'package:global_variable_counter/first_page.dart';

void main() => runApp(const MainApp());

final counter = Counter();

class Counter extends ValueNotifier<int> {
  Counter() : super(0);

  void increment() => value++;
}

final multipleCounter = MultipliedCounter(counter);

class MultipliedCounter extends ValueNotifier<int> {
  MultipliedCounter(Counter counter) : super(0) {
    counter.addListener(() {
      multiply(counter.value);
    });
  }

  void multiply(int base) => value = base * 2;
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirstPage(),
    );
  }
}
