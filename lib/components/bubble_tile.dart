import 'package:flutter/material.dart';
import 'package:redi/screens/book_listing.dart';

import '../constants/constants.dart';

class BubbleTile extends StatelessWidget {
  final String bubbleEmoji;
  final String bubbleTitle;
  const BubbleTile(
      {super.key, required this.bubbleEmoji, required this.bubbleTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        spacing: 5,
        children: [
          GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => BookListing())),
            child: CircleAvatar(
                backgroundColor: Colors.grey[200],
                radius: AppMeasure.width / 10,
                child: Text(
                  bubbleEmoji,
                  style: TextStyle(
                    fontSize: 30,
                  ),
                )),
          ),
          Text(
            bubbleTitle,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
