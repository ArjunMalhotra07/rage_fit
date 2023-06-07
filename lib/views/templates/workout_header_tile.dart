import 'package:flutter/material.dart';

import '../../logic/utils/constants.dart';

class WorkoutHeaderTile extends StatelessWidget {
  const WorkoutHeaderTile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
            width: 30,
            child: Image(
                image: const AssetImage('images/gym.png'),
                color: appColors.whiteColor),
          ),
          const SizedBox(width: 140),
          SizedBox(
            width: 70,
            height: 50,
            child: Text(
              'Reps',
              style: appUtilities.textStyleFunc(),
            ),
          ),
          const SizedBox(width: 20),
          SizedBox(
            width: 70,
            height: 50,
            child: Text(
              'Kgs',
              style: appUtilities.textStyleFunc(),
            ),
          ),
        ],
      ),
    );
  }
}
