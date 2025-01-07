import 'package:flutter/material.dart';
import 'package:redi/components/chapter_tile.dart';
import 'package:screen_brightness/screen_brightness.dart';

import '../constants/constants.dart';
import '../models/book.dart';

class ChapterPage extends StatefulWidget {
  final Book book;
  const ChapterPage({super.key, required this.book});

  @override
  State<ChapterPage> createState() => _ChapterPageState();
}

class _ChapterPageState extends State<ChapterPage> {
  double textSize = 20;
  double _brightness = 0.5;
  String fontFamily = 'Garamond';

  void garamondFont() {
    setState(() {
      fontFamily = 'Garamond';
    });
  }

  void sansFont() {
    setState(() {
      fontFamily = '';
    });
  }

  void increaseFontSize() {
    setState(() {
      textSize = 28;
      print('Text Size: $textSize');
    });
  }

  void decreaseFontSize() {
    setState(() {
      textSize = 16;
      print('Text Size: $textSize');
    });
  }

  void defaultFontSize() {
    setState(() {
      textSize = 20;
      print('Text Size: $textSize');
    });
  }

  void showSettingsModal() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Container(
              width: AppMeasure.width,
              height: AppMeasure.height / 2,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        'Themes & Settings',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Brightness',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          child: Slider(
                            activeColor: Colors.black,
                            value: _brightness,
                            min: 0,
                            max: 1,
                            onChanged: (value) => setState(() {
                              _brightness = value;

                              try {
                                ScreenBrightness()
                                    .setScreenBrightness(_brightness);
                              } catch (e) {
                                print('Error in slider $e');
                              }
                            }),
                          ),
                        ),
                        Text(
                          'Text Size',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          spacing: 10,
                          children: [
                            GestureDetector(
                              onTap: decreaseFontSize,
                              child: Container(
                                //padding: EdgeInsets.all(10),
                                width: AppMeasure.width / 10,
                                height: AppMeasure.height / 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.black,
                                    )),
                                child: Center(
                                    child: Text(
                                  'A',
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                )),
                              ),
                            ),
                            GestureDetector(
                              onTap: defaultFontSize,
                              child: Container(
                                //padding: EdgeInsets.all(10),
                                width: AppMeasure.width / 10,
                                height: AppMeasure.height / 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.black,
                                    )),
                                child: Center(child: Text('A')),
                              ),
                            ),
                            GestureDetector(
                              onTap: increaseFontSize,
                              child: Container(
                                width: AppMeasure.width / 10,
                                height: AppMeasure.height / 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.black,
                                    )),
                                child: Center(
                                    child: Text(
                                  'A',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                )),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Font Family',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      spacing: 10,
                      children: [
                        GestureDetector(
                          onTap: garamondFont,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  width: 1,
                                  color: Colors.black,
                                )),
                            child: Column(
                              children: [
                                Text(
                                  'Aa',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Text('Redi Default'),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: sansFont,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  width: 1,
                                  color: Colors.black,
                                )),
                            child: Column(
                              children: [
                                Text(
                                  'Aa',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    fontFamily: '',
                                  ),
                                ),
                                Text(
                                  'Sans Default',
                                  style: TextStyle(fontFamily: ''),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
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
                          textFamily: fontFamily,
                          chapterSize: textSize,
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
