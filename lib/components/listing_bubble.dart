import 'package:flutter/material.dart';

class ListingBubble extends StatelessWidget {
  final String listingName;
  final Color boxColor;
  final bool isActive;
  ListingBubble(
      {super.key,
      required this.listingName,
      required this.boxColor,
      required this.isActive});

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
              color: isActive ? Colors.white : boxColor.withAlpha(150),
            ),
          ),
          color: isActive ? boxColor : boxColor.withAlpha(15),
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
        ),
      ),
    );
  }
}
