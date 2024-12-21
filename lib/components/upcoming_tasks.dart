import 'package:flutter/material.dart';

class UpcomingTasks extends StatelessWidget {
  final String taskName;
  const UpcomingTasks({super.key, required this.taskName});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.yellow,
        radius: 15,
        child: Icon(
          Icons.warning,
          color: Colors.black,
          size: 15,
        ),
      ),
      title: Text(taskName),
    );
  }
}
