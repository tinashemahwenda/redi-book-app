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
  double _textSize = 20;
  Color bgColor = Colors.white;
  Color textColor = Colors.black;
  String _fontFamily = 'Garamond';

  ScrollController scrollController = ScrollController();
  double _scrollProgress = 0;

  List _chapters = [];

  @override
  void initState() {
    super.initState();
    _loadFontSize();
    _loadFontFamily();
    _loadScrollProgress();
    _addToList();
    //_loadBgColor();
    scrollController.addListener(() {
      _scrollProgress =
          scrollController.offset / scrollController.position.maxScrollExtent;

      setState(() {});
    });
    print(_chapters);
  }

  _addToList() {
    _chapters = widget.book.chapters.toList();
    print(_chapters);
  }

  int toPercent() {
    _scrollProgress *= 100;

    return _scrollProgress.round();
  }

  void changeBgToBlack() {
    setState(() {
      bgColor = Colors.black;
      textColor = Colors.white30;
    });
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

  /*void _loadBgColor() async {
    final prefs = await SharedPreferences.getInstance();
    final colorValue = prefs.getInt('savedColor') ?? Colors.white.value;

    setState(() {
      bgColor = Color(colorValue);
      textColor = Colors.white30;
    });
  }*/

  void _loadScrollProgress() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() {
      _scrollProgress = (prefs.getDouble('scrollProgress')) ?? 0.0;
    });
  }

  void _loadFontFamily() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _fontFamily = (prefs.getString('textFont')) ?? 'Garamond';
    });
  }

  void saveColor(Color color) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('savedColor', color.value);
  }

  void _garamondFontFamily() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() {
      _fontFamily = (prefs.getString('textFont') ?? 'Garamond');
      prefs.setString('textFont', 'Garamond');
    });
  }

  void _sansFontFamily() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() {
      _fontFamily = (prefs.getString('textFont') ?? '');
      prefs.setString('textFont', '');
    });
  }

  void _loadFontSize() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _textSize = (prefs.getDouble('textSize')) ?? 20;
    });
  }

  void _increaseTextSize() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() {
      _textSize = (prefs.getDouble('textSize') ?? 20);
      prefs.setDouble('textSize', 28);
    });
  }

  void _decreaseTextSize() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() {
      _textSize = (prefs.getDouble('textSize') ?? 20);
      prefs.setDouble('textSize', 16);
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
                              onTap: _decreaseTextSize,
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
                              onTap: _increaseTextSize,
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
                              onTap: () {},
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
                          onTap: _garamondFontFamily,
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
                          onTap: _sansFontFamily,
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
                  Row(
                    spacing: 15,
                    children: [
                      GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: textColor,
                          )),
                      Column(
                        children: [
                          Text(
                            widget.book.title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
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
                        textFamily: _fontFamily,
                        chapterSize: _textSize,
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
                  )),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 40),
        child: LinearProgressIndicator(
          value: _scrollProgress,
          minHeight: 10,
          borderRadius: BorderRadius.circular(20),
          backgroundColor: textColor.withAlpha(20),
          color: textColor.withAlpha(50),
        ),
      ),
    );
  }
}
