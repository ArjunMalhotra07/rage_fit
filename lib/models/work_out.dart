import 'package:flutter/material.dart';

enum WorkOutTypes {
  overheadPress,
  latPullDown,
  benchPress,
}

class Count {
  final int weight;
  final int reps;

  Count(this.weight, this.reps);
}

class WorkOuts {}

class WorkOut {
  final WorkOutTypes workoutName;
  final List<Count> warmupRows;
  final List<Count> setRows;
  WorkOut(this.workoutName, this.warmupRows, this.setRows);
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
