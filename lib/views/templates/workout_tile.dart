import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rage_fit/logic/provider/workout_provider.dart';
import 'package:rage_fit/views/templates/workout_header_tile.dart';
import 'constants.dart';
import '../../models/work_out.dart';

class WorkoutRowTile extends StatefulWidget {
  final int index;
  final WorkOutTypes workOutName;
  final Count row;
  final RowType type;
  const WorkoutRowTile(
      {super.key,
      required this.index,
      required this.row,
      required this.type,
      required this.workOutName});

  @override
  State<WorkoutRowTile> createState() => _WorkoutRowTileState();
}

class _WorkoutRowTileState extends State<WorkoutRowTile> {
  final _formKey = GlobalKey<FormState>();
  bool readOnlyVar = true;
  TextEditingController repsC = TextEditingController();
  TextEditingController weightC = TextEditingController();

  @override
  void dispose() {
    super.dispose();
  }

  void saveState() {}
  @override
  Widget build(BuildContext context) {
    final workOutLogProvider = Provider.of<WorkOutLogProvider>(context);
    return Column(
      children: [
        widget.index == 0 ? const WorkoutHeaderTile() : Container(),
        SizedBox(
            height: 80,
            child: Column(
              children: [
                const Divider(color: Colors.black),
                const SizedBox(height: 10),
                Form(
                    key: _formKey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //! Index Number
                        Text(
                          "${widget.index + 1}.",
                          style: appUtilities.textStyleFunc(),
                        ),
                        const SizedBox(width: 100),
                        //! Repititions
                        SizedBox(
                            width: 70,
                            height: 50,
                            child: TextFormField(
                              controller: repsC,
                              readOnly: readOnlyVar,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '${widget.row.reps}',
                                  hintStyle: appUtilities.textStyleFunc()),
                              style: appUtilities.textStyleFunc(),
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                            )),
                        //! Weight
                        SizedBox(
                            width: 70,
                            height: 50,
                            child: TextFormField(
                              controller: weightC,
                              readOnly: readOnlyVar,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '${widget.row.weight}',
                                  hintStyle: appUtilities.textStyleFunc()),
                              style: appUtilities.textStyleFunc(),
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                            )),
                        //! Edit Pen
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              readOnlyVar = !readOnlyVar;
                            });

                            if (readOnlyVar == true) {
                              final int parsedWeight =
                                  int.tryParse(weightC.text) ??
                                      widget.row.weight;
                              final int parsedReps =
                                  int.tryParse(repsC.text) ?? widget.row.reps;

                              _formKey.currentState?.save();
                              workOutLogProvider.updateWorkOut(
                                  widget.workOutName,
                                  widget.row,
                                  widget.type,
                                  Count(weight: parsedWeight, reps: parsedReps),
                                  context);
                            }
                          },
                          child: Icon(
                            readOnlyVar ? Icons.edit : Icons.check,
                            color: appColors.lightWhiteColor,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            workOutLogProvider.removeWorkOut(widget.workOutName,
                                widget.row, widget.type, context, widget.index);
                          },
                          child: Icon(
                            Icons.delete,
                            color: appColors.redColor,
                          ),
                        )
                      ],
                    ))
              ],
            )),
      ],
    );
  }
}
