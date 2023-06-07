import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rage_fit/models/work_out.dart';
import 'package:rage_fit/views/templates/dismissible_widget.dart';
import 'package:rage_fit/views/templates/workout_tile.dart';
import '../../models/enum.dart';
import '../templates/constants.dart';
import 'package:rage_fit/logic/workout_provider.dart';

import '../templates/workout_header_tile.dart';

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
                    WorkOut workout =
                        workOutLogProvider.workouts.workOutsVar[index];
                    List<Count> warmUpRowsVar = workout.warmupRows;
                    List<Count> setRowsVar = workout.setRows;
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
                                GestureDetector(
                                  onTap: () {
                                    appUtilities.showSnackBar(
                                        'Add workouts by clicking \non the add button below',
                                        SnackBarType.success,
                                        context);
                                  },
                                  child: Icon(Icons.question_mark_sharp,
                                      color: appColors.iconWhiteColor),
                                ),
                                const SizedBox(width: 10),
                                GestureDetector(
                                  onTap: () {
                                    appUtilities.showSnackBar(
                                        'Swipe the workouts to delete. \nClick edit to modify.',
                                        SnackBarType.info,
                                        context);
                                  },
                                  child: Icon(Icons.more_vert,
                                      color: appColors.iconWhiteColor),
                                )
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
                            //! Warm Up List
                            SingleChildScrollView(
                                child: ListView.builder(
                                    physics: const ClampingScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: warmUpRowsVar.length,
                                    itemBuilder: ((context, index1) {
                                      Count row = warmUpRowsVar[index1];
                                      return warmUpRowsVar.isNotEmpty &&
                                              index1 == 0
                                          ? Column(
                                              children: [
                                                const WorkoutHeaderTile(),
                                                DismissibleWidget(
                                                    key: ObjectKey(row),
                                                    performThisAction: () {
                                                      workOutLogProvider
                                                          .removeWorkOut(
                                                              workout
                                                                  .workoutName,
                                                              warmUpRowsVar[
                                                                  index1],
                                                              RowType.warmUp,
                                                              context,
                                                              index1);
                                                    },
                                                    incomingWidget:
                                                        WorkoutRowTile(
                                                      key: UniqueKey(),
                                                      workOutName:
                                                          listOfWorkOuts[index],
                                                      index: index1,
                                                      row: row,
                                                      type: RowType.warmUp,
                                                    ),
                                                    row: row.toString()),
                                              ],
                                            )
                                          : DismissibleWidget(
                                              key: ObjectKey(row),
                                              performThisAction: () {
                                                workOutLogProvider
                                                    .removeWorkOut(
                                                        workout.workoutName,
                                                        warmUpRowsVar[index1],
                                                        RowType.warmUp,
                                                        context,
                                                        index1);
                                              },
                                              incomingWidget: WorkoutRowTile(
                                                key: UniqueKey(),
                                                workOutName:
                                                    listOfWorkOuts[index],
                                                index: index1,
                                                row: row,
                                                type: RowType.warmUp,
                                              ),
                                              row: row.toString());
                                    }))),
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
                              child: SingleChildScrollView(
                                  child: ListView.builder(
                                      physics: const ClampingScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: setRowsVar.length,
                                      itemBuilder: ((context, index1) {
                                        Count row = setRowsVar[index1];
                                        return DismissibleWidget(
                                            key: ObjectKey(row),
                                            performThisAction: () {
                                              workOutLogProvider.removeWorkOut(
                                                  workout.workoutName,
                                                  setRowsVar[index1],
                                                  RowType.setRow,
                                                  context,
                                                  index1);
                                            },
                                            incomingWidget: WorkoutRowTile(
                                              key: UniqueKey(),
                                              workOutName:
                                                  listOfWorkOuts[index],
                                              index: index1,
                                              row: row,
                                              type: RowType.setRow,
                                            ),
                                            row: row.toString());
                                      }))),
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
