import 'package:flutter/material.dart';

import '../../models/work_out.dart';
import 'constants.dart';

class AppUtilities {
  String formatWorkOutType(WorkOutTypes type) {
    String formattedType = type.toString().split('.').last;
    List<String> words = formattedType.split(RegExp(r'(?=[A-Z])'));
    words =
        words.map((word) => word[0].toUpperCase() + word.substring(1)).toList();
    return words.join(' ');
  }

  TextStyle textStyleFunc() {
    return TextStyle(
      color: appColors.lightWhiteColor,
      fontSize: 18,
    );
  }
}
