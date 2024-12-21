import 'package:flutter/material.dart';

class FeaturesPage extends StatelessWidget {
  const FeaturesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Upcoming Updates'),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.check),
              ),
            )
          ],
        ),
      ),
    );
  }
}
