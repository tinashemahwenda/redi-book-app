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
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        children: [
          Container(
            height: AppMeasure.height / 5,
            width: AppMeasure.width / 3,
            color: Colors.grey,
            child: Image.asset(imageUrl),
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                bookName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                author,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
              Text(chapters),
            ],
          ),
        ],
      ),
    );
  }
}
