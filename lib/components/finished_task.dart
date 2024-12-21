import 'package:flutter/material.dart';

class FinishedTask extends StatelessWidget {
  final String taskName;
  const FinishedTask({super.key, required this.taskName});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.green,
        radius: 15,
        child: Icon(
          Icons.check,
          color: Colors.white,
          size: 15,
        ),
      ),
      title: Text(taskName),
    );
  }
}
