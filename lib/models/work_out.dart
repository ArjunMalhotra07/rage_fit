import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'work_out.freezed.dart';
part 'work_out.g.dart';

enum WorkOutTypes {
  overheadPress,
  latPullDown,
  benchPress,
}

@Freezed()
class WorkOuts with _$WorkOuts {
  const factory WorkOuts({required List<WorkOut> workOutsVar}) = _WorkOuts;
  factory WorkOuts.fromJson(Map<String, dynamic> json) =>
      _$WorkOutsFromJson(json);
}

@Freezed()
class WorkOut with _$WorkOut {
  const factory WorkOut(
      {required WorkOutTypes workoutName,
      required List<Count> warmupRows,
      required List<Count> setRows}) = _WorkOut;
  factory WorkOut.fromJson(Map<String, dynamic> json) =>
      _$WorkOutFromJson(json);
}

@Freezed()
class Count with _$Count {
  const factory Count({required int weight, required int reps}) = _Count;
  factory Count.fromJson(Map<String, dynamic> json) => _$CountFromJson(json);
}

class WorkOutLogProvider extends ChangeNotifier {
  final WorkOuts _workoutVar = const WorkOuts(workOutsVar: [
    WorkOut(
        workoutName: WorkOutTypes.benchPress,
        warmupRows: [Count(weight: 10, reps: 10)],
        setRows: [Count(weight: 10, reps: 10)])
  ]);
  WorkOuts get workouts => _workoutVar;

  void addWorkOut(WorkOut workOut) {
    // _workoutVar.add(workOut);
    notifyListeners();
  }

  void removeWorkOut(WorkOut workOut) {
    // _workoutVar.remove(workOut);
    notifyListeners();
  }
}
