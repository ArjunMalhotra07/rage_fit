import 'package:flutter/material.dart';
import 'package:rage_fit/logic/utils/utilities.dart';

import '../../models/work_out.dart';

const listOfWorkOuts = WorkOutTypes.values;
final appUtilities = AppUtilities();
final appColors = AppColors();

class AppColors {
  final cardColor = const Color.fromARGB(255, 34, 40, 56);
  final whiteColor = Colors.white;
  final iconWhiteColor = Colors.white54;
  final redColor = Colors.red.shade300;
}
