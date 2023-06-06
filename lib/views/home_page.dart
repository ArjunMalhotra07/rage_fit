import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Work Out Logs'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade600,
      ),
    );
  }
}
