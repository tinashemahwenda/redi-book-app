import 'package:flutter/material.dart';

class ListingBubble extends StatelessWidget {
  final String listingName;
  final Color boxColor;
  ListingBubble({super.key, required this.listingName, required this.boxColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 10,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          child: Text(
            listingName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: boxColor,
            ),
          ),
          color: boxColor.withAlpha(100),
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 5,
          ),
        ),
      ),
    );
  }
}
