import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

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

  void showSnackBar(String message, SnackBarType type, BuildContext context) {
    switch (type) {
      case SnackBarType.error:
        showTopSnackBar(
          Overlay.of(context),
          CustomSnackBar.error(
            message: message,
          ),
        );
        break;
      case SnackBarType.success:
        showTopSnackBar(
          Overlay.of(context),
          CustomSnackBar.success(
            message: message,
          ),
        );
        break;
      case SnackBarType.info:
        showTopSnackBar(
          Overlay.of(context),
          CustomSnackBar.info(
            message: message,
          ),
        );
        break;
    }
  }
}
