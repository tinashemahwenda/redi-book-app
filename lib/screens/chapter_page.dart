import 'dart:core';

import 'package:flutter/material.dart';
import 'package:redi/components/chapter_tile.dart';
import 'package:redi/components/settingsmodal.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/constants.dart';
import '../models/book.dart';

class ChapterPage extends StatefulWidget {
  final Book book;
  const ChapterPage({super.key, required this.book});

  @override
  State<ChapterPage> createState() => _ChapterPageState();
}

class _ChapterPageState extends State<ChapterPage> {
  //Color iconColor = Colors.white;
  double textSize = 20;
  Color bgColor = Colors.white;
  Color textColor = Colors.black;
  String fontFamily = 'Garamond';

  double progressValue = 0.0;

  late double _progressPercentage;

  ScrollController scrollController = ScrollController();
  double _savedScrollPosition = 0.0;

  @override
  void initState() {
    super.initState();
    _loadScrollPosition();
    scrollController.addListener(() {
      progressValue =
          scrollController.offset / scrollController.position.maxScrollExtent;

      _saveScrollPosition();

      setState(() {});
    });
  }

  Future<void> _loadScrollPosition() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      _savedScrollPosition = prefs.getDouble('scrollPosition') ?? 0.0;
    });

    scrollController.jumpTo(_savedScrollPosition);
  }

  Future<void> _saveScrollPosition() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('scrollPositon', scrollController.offset);
  }

  void changeBgToBlack() {
    setState(() {
      bgColor = Colors.black;
      textColor = Colors.white;
    });
  }

  void progressPercentage() {
    _progressPercentage = progressValue * 100;
    _progressPercentage.round();
  }

  void changeBgToBrown() {
    setState(() {
      bgColor = Colors.brown;
      textColor = Colors.white;
    });
  }

  void changeBgToWhite() {
    setState(() {
      bgColor = Colors.white;
      textColor = Colors.black;
    });
  }

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
                        BrightnessControl(),
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
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            GestureDetector(
                              onTap: changeBgToBrown,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  color: Colors.brown,
                                  child: Icon(
                                    Icons.check,
                                    size: 16,
                                    color: textColor,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: changeBgToBlack,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: changeBgToWhite,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                        width: 1,
                                        color: Colors.black,
                                      )),
                                ),
                              ),
                            ),
                            Container(
                              width: 20,
                              height: 20,
                              color: Colors.white,
                            ),
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
        backgroundColor: bgColor,
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
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: textColor,
                        )),
                    GestureDetector(
                        onTap: showSettingsModal,
                        child: Icon(
                          Icons.settings_suggest_rounded,
                          color: textColor,
                        ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                    height: AppMeasure.height / 1.3,
                    width: AppMeasure.width,
                    child: ListView.builder(
                      controller: scrollController,
                      itemCount: widget.book.chapters.length,
                      itemBuilder: (context, index) {
                        return ChapterTile(
                          textColor: textColor,
                          textFamily: fontFamily,
                          chapterSize: textSize,
                          currentChapter:
                              widget.book.chapters[index].chapter.toString(),
                          bookAuthor: widget.book.author,
                          bookContent: widget.book.chapters[index].content,
                          chapterLength: widget.book.chapters.length -
                              widget.book.chapters[index].chapter,
                          chapterTitle: widget.book.chapters[index].title,

                          /*bookAuthor: widget.book.author,
                          bookContent: widget.book.chapters[index].content,
                          chapterLength: widget.book.chapters.length,
                          chapterTitle: widget.book.chapters[index].title,*/
                        );
                      },
                    ))
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 40.0, left: 20, right: 20),
          child: Text(''),
        ));
  }
}
