import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'redi',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        CircleAvatar(
          child: Icon(
            Icons.person_2_outlined,
            color: Colors.black,
          ),
          backgroundColor: Colors.grey[300],
        )
      ],
    );
  }
}
