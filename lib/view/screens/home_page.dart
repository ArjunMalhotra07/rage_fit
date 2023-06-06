import 'package:average_fit/model/workout_model.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  // final _workOutTypes = WorkOutTypes.values;

  @override
  Widget build(BuildContext context) {
    // print(_workOutTypes);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Enter logs',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Container();
      }),
    );
  }
}
