import 'package:flutter/material.dart';

class NewHomeNavigationBar extends StatelessWidget {
  const NewHomeNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Home',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 50,
          ),
        ),
        Icon(
          Icons.list,
          size: 30,
        )
      ],
    );
  }
}
