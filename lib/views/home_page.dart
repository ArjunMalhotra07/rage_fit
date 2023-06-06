import 'package:flutter/material.dart';
import '../logic/utils/constants.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: appColors.cardColor,
        ),
        body: Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ListView.builder(
                  itemCount: listOfWorkOuts.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: appColors.cardColor,
                      child: Container(
                        padding: const EdgeInsets.only(left: 10),
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  appUtilities
                                      .formatWorkOutType(listOfWorkOuts[index]),
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                const Spacer(),
                                const Icon(Icons.question_mark_sharp,
                                    color: Colors.white54),
                                const SizedBox(width: 10),
                                const Icon(Icons.more_vert,
                                    color: Colors.white54)
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const Icon(Icons.add),
                                const SizedBox(width: 10),
                                Text(
                                  'Warm-Up',
                                  style: TextStyle(
                                      color: Colors.red.shade300, fontSize: 16),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            )));
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