import 'package:flutter/material.dart';

class DismissibleWidget extends StatelessWidget {
  final VoidCallback performThisAction;
  final Widget incomingWidget;
  final String row;
  const DismissibleWidget(
      {super.key,
      required this.performThisAction,
      required this.incomingWidget,
      required this.row});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(row),
      onDismissed: (direction) {
        performThisAction();
      },
      background: Container(
        color: Colors.red,
        child: const Icon(Icons.delete),
      ),
      child: incomingWidget,
    );
  }
}
