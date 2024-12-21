import 'package:flutter/material.dart';

import '../constants/constants.dart';

class BookTile extends StatelessWidget {
  final String imageUrl;
  final String bookName;
  final String author;
  final String chapters;
  const BookTile({
    super.key,
    required this.imageUrl,
    required this.bookName,
    required this.author,
    required this.chapters,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: AppMeasure.width / 2.5,
              height: AppMeasure.height / 4,
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                bookName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                author,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
