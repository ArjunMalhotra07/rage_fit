import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'work_out.freezed.dart';
part 'work_out.g.dart';

enum WorkOutTypes {
  overheadPress,
  latPullDown,
  benchPress,
}

enum RowType {
  warmUp,
  setRow,
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
  WorkOuts _workoutVar = const WorkOuts(workOutsVar: [
    WorkOut(workoutName: WorkOutTypes.benchPress, warmupRows: [], setRows: []),
    WorkOut(workoutName: WorkOutTypes.latPullDown, warmupRows: [], setRows: []),
    WorkOut(
        workoutName: WorkOutTypes.overheadPress, warmupRows: [], setRows: [])
  ]);
  WorkOuts get workouts => _workoutVar;

  void addCount(WorkOutTypes exercise, Count count, RowType rowType) {
    final workoutIndex =
        _workoutVar.workOutsVar.indexWhere((w) => w.workoutName == exercise);
    if (workoutIndex != -1) {
      final workout = _workoutVar.workOutsVar[workoutIndex];
      final updatedWarmupRows = List<Count>.from(workout.warmupRows);
      final updatedSetRows = List<Count>.from(workout.setRows);

      if (rowType == RowType.warmUp) {
        updatedWarmupRows.add(count);
      } else if (rowType == RowType.setRow) {
        updatedSetRows.add(count);
      }

      final updatedWorkout = workout.copyWith(
          warmupRows: updatedWarmupRows, setRows: updatedSetRows);
      final updatedWorkouts = WorkOuts(
        workOutsVar: List<WorkOut>.from(_workoutVar.workOutsVar)
          ..[workoutIndex] = updatedWorkout,
      );
      _workoutVar = updatedWorkouts;
      notifyListeners();
    }
  }

  void removeCount(WorkOutTypes exercise, Count count) {
    final workoutIndex =
        _workoutVar.workOutsVar.indexWhere((w) => w.workoutName == exercise);
    if (workoutIndex != -1) {
      final workout = _workoutVar.workOutsVar[workoutIndex];
      final updatedWarmupRows = List<Count>.from(workout.warmupRows)
        ..remove(count);
      final updatedSetRows = List<Count>.from(workout.setRows)..remove(count);
      final updatedWorkout = workout.copyWith(
          warmupRows: updatedWarmupRows, setRows: updatedSetRows);
      final updatedWorkouts = WorkOuts(
        workOutsVar: List<WorkOut>.from(_workoutVar.workOutsVar)
          ..[workoutIndex] = updatedWorkout,
      );
      _workoutVar = updatedWorkouts;
      notifyListeners();
    }
  }
}
