import 'package:flutter/material.dart';

class ChapterTile extends StatelessWidget {
  final String chapterTitle;
  final String currentChapter;
  final String bookAuthor;
  final int chapterLength;
  final String bookContent;
  final double chapterSize;
  final String textFamily;
  const ChapterTile({
    super.key,
    required this.textFamily,
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
            fontFamily: textFamily,
          ),
        ),
        Text(
          '$chapterLength Chapters Remaining | $bookAuthor',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontFamily: textFamily,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          bookContent,
          style: TextStyle(
            fontSize: chapterSize,
            fontFamily: textFamily,
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
