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
                                  style: TextStyle(
                                      color: appColors.whiteColor,
                                      fontSize: 18),
                                ),
                                const Spacer(),
                                Icon(Icons.question_mark_sharp,
                                    color: appColors.iconWhiteColor),
                                const SizedBox(width: 10),
                                Icon(Icons.more_vert,
                                    color: appColors.iconWhiteColor)
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(Icons.add, color: appColors.redColor),
                                const SizedBox(width: 10),
                                Text(
                                  'Warm-Up',
                                  style: TextStyle(
                                      color: appColors.redColor, fontSize: 16),
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
