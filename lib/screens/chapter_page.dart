import 'package:flutter/material.dart';

import '../models/book.dart';

class ChapterPage extends StatelessWidget {
  final Book book;
  const ChapterPage({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(Icons.arrow_back_ios_new)),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Chapter ${book.chapters[0].chapter}:${book.chapters[0].title}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
                Text(
                  '${book.chapters.length} Chapters | ${book.author}',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  book.chapters[0].content.toString(),
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Chapter ${book.chapters[1].chapter}:${book.chapters[1].title}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
                Text(
                  book.chapters[1].content.toString(),
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Chapter ${book.chapters[2].chapter}:${book.chapters[2].title}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
                Text(
                  book.chapters[2].content.toString(),
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
