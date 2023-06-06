import 'package:flutter/material.dart';
import 'package:rage_fit/models/work_out.dart';
import '../logic/utils/constants.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                            //! Name + Question Mark + More Info
                            Row(
                              children: [
                                Text(
                                  appUtilities
                                      .formatWorkOutType(listOfWorkOuts[index]),
                                  style: TextStyle(
                                      color: appColors.whiteColor,
                                      fontWeight: FontWeight.bold,
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
                            const SizedBox(height: 20),
                            //! Add + Warm-Up
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
                            ),
                            const SizedBox(height: 20),
                            const Divider(color: Colors.black),
                            const SizedBox(height: 20),
                            // AnimatedList(
                            //     initialItemCount:
                            //         workOutLogProviderObj.workouts.length,
                            //     itemBuilder: (context, int, animation) =>
                            //         ListItemWidget(
                            //             workOut: workOutLogProviderObj
                            //                 .workouts[index],
                            //             animation: animation,
                            //             onClicked: () {}))
                            Row(
                              children: [
                                Icon(Icons.add, color: appColors.redColor),
                                const SizedBox(width: 10),
                                Text(
                                  'Set',
                                  style: TextStyle(
                                      color: appColors.redColor, fontSize: 16),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            )));
  }
}

class ListItemWidget extends StatelessWidget {
  final WorkOut workOut;
  final Animation<double> animation;
  final VoidCallback? onClicked;
  const ListItemWidget(
      {super.key,
      required this.workOut,
      required this.animation,
      this.onClicked});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
