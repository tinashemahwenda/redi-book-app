import 'package:flutter/material.dart';

class ChapterTile extends StatelessWidget {
  final String chapterTitle;
  final String currentChapter;
  final String bookAuthor;
  final int chapterLength;
  final String bookContent;
  final double chapterSize;
  const ChapterTile({
    super.key,
    required this.currentChapter,
    required this.bookAuthor,
    required this.bookContent,
    required this.chapterLength,
    required this.chapterTitle,
    required this.chapterSize,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Chapter $currentChapter:$chapterTitle',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
          ),
        ),
        Text(
          '$chapterLength Chapters | $bookAuthor',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          bookContent,
          style: TextStyle(
            fontSize: chapterSize,
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
