import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../logic/utils/constants.dart';
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
    return SizedBox(
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
                    Text(
                      "${widget.index + 1}.",
                      style: appUtilities.textStyleFunc(),
                    ),
                    const SizedBox(width: 100),
                    SizedBox(
                        width: 70,
                        height: 50,
                        child: TextFormField(
                          controller: repsC,
                          readOnly: readOnlyVar,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '${widget.row.reps} reps',
                              hintStyle: appUtilities.textStyleFunc()),
                          style: appUtilities.textStyleFunc(),
                          onChanged: (value) {
                            print(value);
                          },
                          onSaved: (newValue) {
                            print(newValue);
                          },
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                        )),
                    SizedBox(
                        width: 70,
                        height: 50,
                        child: TextFormField(
                          controller: weightC,
                          readOnly: readOnlyVar,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '${widget.row.weight} kg',
                              hintStyle: appUtilities.textStyleFunc()),
                          style: appUtilities.textStyleFunc(),
                          onChanged: (value) {
                            print(value);
                          },
                          onSaved: (newValue) {
                            print(newValue);
                          },
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                        )),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          readOnlyVar = !readOnlyVar;
                          print(readOnlyVar.toString());
                        });

                        if (readOnlyVar == true) {
                          final int? parsedWeight = int.tryParse(weightC.text);
                          final int? parsedReps = int.tryParse(repsC.text);

                          if (parsedWeight != null && parsedReps != null) {
                            _formKey.currentState?.save();
                            workOutLogProvider.addCount(
                              widget.workOutName,
                              Count(weight: parsedWeight, reps: parsedReps),
                              widget.type,
                            );
                          }
                        }
                      },
                      child: Icon(
                        Icons.more_vert,
                        color: appColors.lightWhiteColor,
                      ),
                    )
                  ],
                ))
          ],
        ));
  }
}
