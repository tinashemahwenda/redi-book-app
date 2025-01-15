import 'package:flutter/material.dart';

class ListingBubble extends StatelessWidget {
  final String listingName;
  ListingBubble({super.key, required this.listingName});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        child: Text(
          listingName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        color: Colors.grey[200],
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 5,
        ),
      ),
    );
  }
}
