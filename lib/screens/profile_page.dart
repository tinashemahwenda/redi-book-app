import 'package:flutter/material.dart';
import 'package:redi/components/back_button.dart';
import 'package:redi/constants/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GoBackButton(),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey[300],
                    child: Image.asset(
                      'assets/images/profile/face.png',
                    ),
                    radius: 80,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Tinashe',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  Container(
                    width: AppMeasure.width / 1.5,
                    child: Center(
                      child: Text(
                        'Young explosive reader. He finished 10 in a month🔥',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(height: 20)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
