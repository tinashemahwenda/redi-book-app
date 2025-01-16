import 'package:flutter/material.dart';
import 'package:redi/components/back_button.dart';
import 'package:redi/components/finished_task.dart';
import 'package:redi/components/upcoming_tasks.dart';

class FeaturesPage extends StatelessWidget {
  const FeaturesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              GoBackButton(),
              SizedBox(
                height: 20,
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
              Text(
                'v0.0.2',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 16,
                ),
              ),
              FinishedTask(taskName: 'Recomended Books'),
              FinishedTask(taskName: 'Hot Picks Section'),
              Text(
                'v0.0.3',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 16,
                ),
              ),
              FinishedTask(taskName: 'Longer Version Books'),
              UpcomingTasks(taskName: 'Add 20 books'),
              Text(
                'v0.0.4',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 16,
                ),
              ),
              FinishedTask(taskName: 'Search Bar'),
              FinishedTask(taskName: 'Add a book listing page'),
              FinishedTask(taskName: 'Redesign on the chapter page'),
              Text(
                'v0.0.5',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 16,
                ),
              ),
              UpcomingTasks(taskName: 'Hot Picks Functionality'),
              UpcomingTasks(taskName: 'Add to favourites/reading list'),
              Text(
                'v0.0.6',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 16,
                ),
              ),
              UpcomingTasks(taskName: 'More Hot Picks'),
              UpcomingTasks(taskName: 'Add 100 Books'),
            ],
          ),
        ),
      ),
    );
  }
}
