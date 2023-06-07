import 'package:flutter/material.dart';
import 'package:rage_fit/models/work_out.dart';
import '../../views/templates/constants.dart';

class WorkOutLogProvider extends ChangeNotifier {
  WorkOuts _workoutVar = WorkOuts(workOutsVar: _initializeWorkouts());
  static List<WorkOut> _initializeWorkouts() {
    List<WorkOut> workouts = [];
    for (var workoutType in WorkOutTypes.values) {
      workouts.add(
        WorkOut(workoutName: workoutType, warmupRows: [], setRows: []),
      );
    }
    return workouts;
  }

  WorkOuts get workouts => _workoutVar;

  void addCount(WorkOutTypes exercise, Count count, RowType rowType,
      BuildContext context) {
    final workoutIndex =
        _workoutVar.workOutsVar.indexWhere((w) => w.workoutName == exercise);
    if (workoutIndex != -1) {
      final workout = _workoutVar.workOutsVar[workoutIndex];
      final updatedWarmupRows = List<Count>.from(workout.warmupRows);
      final updatedSetRows = List<Count>.from(workout.setRows);

      if (rowType == RowType.warmUp) {
        if (updatedWarmupRows.isNotEmpty) {
          if (!(updatedWarmupRows[updatedWarmupRows.length - 1].reps == 0 &&
              updatedWarmupRows[updatedWarmupRows.length - 1].weight == 0)) {
            updatedWarmupRows.add(count);
            appUtilities.showSnackBar('Workout Added, You may edit it now',
                SnackBarType.info, context);
          } else {
            appUtilities.showSnackBar(
                'Please edit the last workout before adding newer ones',
                SnackBarType.error,
                context);
          }
        } else {
          updatedWarmupRows.add(count);
          appUtilities.showSnackBar(
              'Workout Added, You may edit it now', SnackBarType.info, context);
        }
      } else if (rowType == RowType.setRow) {
        if (updatedSetRows.isNotEmpty) {
          if (!(updatedSetRows[updatedSetRows.length - 1].reps == 0 &&
              updatedSetRows[updatedSetRows.length - 1].weight == 0)) {
            updatedSetRows.add(count);
            appUtilities.showSnackBar('Workout Added, You may edit it now',
                SnackBarType.info, context);
          } else {
            appUtilities.showSnackBar(
                'Please edit the last workout before adding newer ones',
                SnackBarType.error,
                context);
          }
        } else {
          updatedSetRows.add(count);
          appUtilities.showSnackBar(
              'Workout Added, You may edit it now', SnackBarType.info, context);
        }
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
      Count updatedWorkOut, BuildContext context) {
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
        updatedWarmupRows[rowIndex] = updatedWorkOut;
      } else if (rowType == RowType.setRow) {
        final int rowIndex =
            updatedSetRows.indexWhere((row) => row == oldWorkOut);
        updatedSetRows[rowIndex] = updatedWorkOut;
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
      appUtilities.showSnackBar(
          'Workout Updated', SnackBarType.success, context);

      notifyListeners();
    }
  }

  void removeWorkOut(WorkOutTypes exercise, Count count, RowType rowType) {
    final workout =
        _workoutVar.workOutsVar.firstWhere((w) => w.workoutName == exercise);

    final updatedWarmupRows = List<Count>.from(workout.warmupRows);
    final updatedSetRows = List<Count>.from(workout.setRows);

    if (rowType == RowType.warmUp) {
      updatedWarmupRows.remove(count);
    } else if (rowType == RowType.setRow) {
      updatedSetRows.remove(count);
    }

    final updatedWorkout = workout.copyWith(
      warmupRows: updatedWarmupRows,
      setRows: updatedSetRows,
    );

    final workoutIndex =
        _workoutVar.workOutsVar.indexWhere((w) => w == workout);

    final updatedWorkouts = WorkOuts(
      workOutsVar: List<WorkOut>.from(_workoutVar.workOutsVar)
        ..[workoutIndex] = updatedWorkout,
    );

    _workoutVar = updatedWorkouts;
    notifyListeners();
  }
}
