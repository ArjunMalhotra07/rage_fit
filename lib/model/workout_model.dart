import 'package:flutter/material.dart';

enum WorkOutTypes {
  overheadPress,
  latPullDown,
  benchPress,
}

class WorkOut {
  final int id;
  final WorkOutTypes workoutName;
  final int weight;
  final int reps;
  final int warmupRows;
  final int setRows;
  WorkOut(this.id, this.workoutName, this.warmupRows, this.setRows, this.weight,
      this.reps);
}

class WorkOutLogProvider extends ChangeNotifier {
  final List<WorkOut> _workouts = [];
  List<WorkOut> get workouts => _workouts;

  void addWorkOut(WorkOut workOut) {
    _workouts.add(workOut);
    notifyListeners();
  }

  void removeWorkOut(WorkOut workOut) {
    _workouts.remove(workOut);
    notifyListeners();
  }
}
