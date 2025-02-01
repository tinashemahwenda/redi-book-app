import 'package:flutter/material.dart';

class ChapterTile extends StatelessWidget {
  final String chapterTitle;
  final String currentChapter;
  final String bookAuthor;
  final int chapterLength;
  final String bookContent;
  final double chapterSize;
  final String textFamily;
  final Color textColor;
  const ChapterTile({
    super.key,
    required this.textFamily,
    required this.currentChapter,
    required this.bookAuthor,
    required this.bookContent,
    required this.chapterLength,
    required this.chapterTitle,
    required this.chapterSize,
    required this.textColor,
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
            fontSize: chapterSize * 1.4,
            fontFamily: textFamily,
            color: textColor,
          ),
        ),
        Text(
          chapterLength == 1
              ? '$chapterLength Chapter Remaining | $bookAuthor'
              : '$chapterLength Chapters Remaining | $bookAuthor',
          style: TextStyle(
            fontSize: chapterSize / 1.5,
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
            color: textColor,
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
