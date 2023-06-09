import 'package:flutter/material.dart';
import 'package:rage_fit/logic/workout_provider.dart';
import 'package:rage_fit/views/templates/utilities.dart';

import '../../models/enum.dart';

const listOfWorkOuts = WorkOutTypes.values;
final appUtilities = AppUtilities();
final appColors = AppColors();
final workOutLogProviderObj = WorkOutLogProvider();

class AppColors {
  final cardColor = const Color.fromARGB(255, 20, 27, 49);
  final whiteColor = Colors.white;
  final lightWhiteColor = Colors.white70;
  final iconWhiteColor = Colors.white54;
  final redColor = Colors.red.shade300;
}
