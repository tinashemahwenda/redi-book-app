import 'package:flutter/material.dart';

import '../screens/homescreen.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage())),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          color: Colors.grey[300],
          padding: EdgeInsets.all(10),
          child: CircleAvatar(
            child: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.white,
              size: 20,
            ),
            backgroundColor: Colors.black,
            radius: 30,
          ),
        ),
      ),
    );
  }
}
