import 'package:flutter/material.dart';
import 'package:redi/components/chapter_tile.dart';

import '../components/back_button.dart';
import '../constants/constants.dart';
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
                GoBackButton(),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                    height: AppMeasure.height,
                    width: AppMeasure.width,
                    child: ListView.builder(
                      itemCount: book.chapters.length,
                      itemBuilder: (context, index) {
                        return ChapterTile(
                          currentChapter:
                              book.chapters[index].chapter.toString(),
                          bookAuthor: book.author,
                          bookContent: book.chapters[index].content,
                          chapterLength: book.chapters.length -
                              book.chapters[index].chapter,
                          chapterTitle: book.chapters[index].title,
                        );
                      },
                    ))
              ],
            ),
          ),
        ));
  }
}
