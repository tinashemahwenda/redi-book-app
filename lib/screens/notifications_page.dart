import 'package:flutter/material.dart';
import 'package:redi/components/back_button.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: Column(
          children: [
            GoBackButton(),
          ],
        ),
      ),
    );
  }
}
