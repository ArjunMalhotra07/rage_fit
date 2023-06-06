import 'package:flutter/material.dart';
import 'package:rage_fit/models/work_out.dart';

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

  void updateWorkOut(WorkOutTypes exercise, Count oldWorkOut, RowType rowType,
      Count updatedWorkOut) {
    final int workoutIndex =
        _workoutVar.workOutsVar.indexWhere((w) => w.workoutName == exercise);
    if (workoutIndex != -1) {
      final WorkOut workout = _workoutVar.workOutsVar[workoutIndex];
      final List<Count> updatedWarmupRows =
          List<Count>.from(workout.warmupRows);
      final List<Count> updatedSetRows = List<Count>.from(workout.setRows);

      if (rowType == RowType.warmUp) {
        final int rowIndex =
            updatedWarmupRows.indexWhere((row) => row == oldWorkOut);
        if (rowIndex != -1) {
          updatedWarmupRows[rowIndex] = updatedWorkOut;
        }
      } else if (rowType == RowType.setRow) {
        final int rowIndex =
            updatedSetRows.indexWhere((row) => row == oldWorkOut);
        if (rowIndex != -1) {
          updatedSetRows[rowIndex] = updatedWorkOut;
        }
      }

      final updatedWorkout = workout.copyWith(
        warmupRows: updatedWarmupRows,
        setRows: updatedSetRows,
      );
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
