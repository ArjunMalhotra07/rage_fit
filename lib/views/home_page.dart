import 'package:flutter/material.dart';
import '../logic/utils/constants.dart';

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
        body: Container(
            color: Colors.black,
            child: ListView.builder(
                itemCount: listOfWorkOuts.length,
                itemBuilder: (context, index) {
                  return Container();
                })));
  }
}
/*ListView.builder(
          itemCount: listOfWorkOuts.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text(
                appUtilities.formatWorkOutType(listOfWorkOuts[index]),
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              trailing: const Row(children: [
                Icon(Icons.question_mark_sharp),
                Icon(Icons.more_vert)
              ]),
            );
          }), */