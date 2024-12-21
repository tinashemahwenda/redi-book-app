import 'package:flutter/material.dart';
import 'package:redi/components/finished_task.dart';

class FeaturesPage extends StatelessWidget {
  const FeaturesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                'Upcoming Updates',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FinishedTask(taskName: 'Recomended Books'),
              FinishedTask(taskName: 'Hot Picks Section'),
              FinishedTask(taskName: 'Longer Version Books'),
            ],
          ),
        ),
      ),
    );
  }
}
