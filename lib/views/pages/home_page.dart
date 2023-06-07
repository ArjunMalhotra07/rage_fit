import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rage_fit/models/work_out.dart';
import 'package:rage_fit/views/templates/workout_tile.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import '../../logic/utils/constants.dart';
import 'package:rage_fit/logic/provider/workout_provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final workOutLogProvider = Provider.of<WorkOutLogProvider>(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: appColors.cardColor,
        ),
        body: Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              //! Cards Length
              child: ListView.builder(
                  itemCount: listOfWorkOuts.length,
                  itemBuilder: (context, index) {
                    var name = listOfWorkOuts[index];
                    return Card(
                      color: appColors.cardColor,
                      child: Container(
                        padding: const EdgeInsets.only(left: 10),
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //! Name + Question Mark + More Info
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Text(
                                  appUtilities.formatWorkOutType(name),
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

                            //! Add Icon + Warm-Up
                            GestureDetector(
                              onTap: () {
                                workOutLogProvider.addCount(
                                    listOfWorkOuts[index],
                                    const Count(reps: 0, weight: 0),
                                    RowType.warmUp,
                                    context);
                              },
                              child: Row(
                                children: [
                                  Icon(Icons.add, color: appColors.redColor),
                                  const SizedBox(width: 10),
                                  Text(
                                    'Warm-Up',
                                    style: TextStyle(
                                        color: appColors.redColor,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            // const WorkoutHeaderTile(),

                            //! Warm Up List
                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  ...workOutLogProvider.workouts.workOutsVar
                                      .where((workout) =>
                                          workout.workoutName == name)
                                      .expand((workout) =>
                                          workout.warmupRows.asMap().entries)
                                      .map((entry) {
                                    final index1 = entry.key;
                                    final row = entry.value;
                                    return WorkoutRowTile(
                                      workOutName: listOfWorkOuts[index],
                                      index: index1,
                                      row: row,
                                      type: RowType.warmUp,
                                    );
                                  }),
                                ],
                              ),
                            ),

                            const SizedBox(height: 20),
                            //! Add Icon + Set
                            GestureDetector(
                              onTap: () {
                                workOutLogProvider.addCount(
                                    listOfWorkOuts[index],
                                    const Count(reps: 0, weight: 0),
                                    RowType.setRow,
                                    context);
                              },
                              child: Row(
                                children: [
                                  Icon(Icons.add, color: appColors.redColor),
                                  const SizedBox(width: 10),
                                  Text(
                                    'Set',
                                    style: TextStyle(
                                        color: appColors.redColor,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),

                            //! Sets List
                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  ...workOutLogProvider.workouts.workOutsVar
                                      .where((workout) =>
                                          workout.workoutName == name)
                                      .expand((workout) => [
                                            ...workout.setRows
                                                .asMap()
                                                .entries
                                                .map((entry) {
                                              final index1 = entry.key;
                                              final row = entry.value;
                                              return WorkoutRowTile(
                                                workOutName:
                                                    listOfWorkOuts[index],
                                                index: index1,
                                                row: row,
                                                type: RowType.setRow,
                                              );
                                            }),
                                          ]),
                                ],
                              ),
                            ),

                            const SizedBox(height: 20),
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
