import 'package:flutter/material.dart';
import 'package:global_variable_counter/main.dart';
import 'package:global_variable_counter/second_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Page')),
      body: Center(
        child: ValueListenableBuilder(
          valueListenable: multipleCounter,
          builder: (context, value, child) {
            return Text(value.toString());
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigate_next_outlined),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => const SecondPage(),
            ),
          );
        },
      ),
    );
  }
}
