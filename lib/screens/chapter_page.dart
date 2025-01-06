import 'package:flutter/material.dart';
import 'package:redi/components/chapter_tile.dart';

import '../constants/constants.dart';
import '../models/book.dart';

class ChapterPage extends StatefulWidget {
  final Book book;
  const ChapterPage({super.key, required this.book});

  @override
  State<ChapterPage> createState() => _ChapterPageState();
}

class _ChapterPageState extends State<ChapterPage> {
  void showSettingsModal() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            width: AppMeasure.width,
            height: AppMeasure.height / 3,
          );
        });
  }

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Icon(Icons.arrow_back_ios_new)),
                    GestureDetector(
                        onTap: showSettingsModal, child: Icon(Icons.settings))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                    height: AppMeasure.height,
                    width: AppMeasure.width,
                    child: ListView.builder(
                      itemCount: widget.book.chapters.length,
                      itemBuilder: (context, index) {
                        return ChapterTile(
                          currentChapter:
                              widget.book.chapters[index].chapter.toString(),
                          bookAuthor: widget.book.author,
                          bookContent: widget.book.chapters[index].content,
                          chapterLength: widget.book.chapters.length,
                          chapterTitle: widget.book.chapters[index].title,
                        );
                      },
                    ))
              ],
            ),
          ),
        ));
  }
}
