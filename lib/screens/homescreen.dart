import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:redi/components/bubble_tile.dart';

import 'package:redi/components/searchbox.dart';
import 'package:redi/constants/constants.dart';
import 'package:redi/models/book.dart';
import 'package:redi/screens/chapter_page.dart';

import '../components/bookTile.dart';
import '../components/new_homenavbar.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Book> _books = [];
  @override
  void initState() {
    super.initState();
    _loadJsonData();
  }

  Future<void> _loadJsonData() async {
    try {
      String jsonString = await rootBundle.loadString('assets/books.json');
      List<dynamic> jsonData = jsonDecode(jsonString);

      List<Book> books = jsonData.map((data) => Book.fromJson(data)).toList();

      setState(() {
        _books = books;
        print(_books);
      });
    } catch (e) {
      print('Error in loading data $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: NewHomeNavigationBar(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Searchbox(),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Hottest Reading Lists',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    BubbleTile(
                      bubbleImagePath: 'assets/images/fiction.png',
                      bubbleTitle: 'Fiction',
                    ),
                    BubbleTile(
                      bubbleImagePath: 'assets/images/romance.png',
                      bubbleTitle: 'Romance',
                    ),
                    BubbleTile(
                      bubbleImagePath: 'assets/images/humor.png',
                      bubbleTitle: 'Humor',
                    ),
                    BubbleTile(
                      bubbleImagePath: 'assets/images/classic.png',
                      bubbleTitle: 'Classic',
                    ),
                    BubbleTile(
                      bubbleImagePath: 'assets/images/happy.png',
                      bubbleTitle: 'Happy',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Recommended for you',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                  height: AppMeasure.height / 3,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _books.length,
                      itemBuilder: (context, index) {
                        final book = _books[index];
                        return GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ChapterPage(book: book))),
                          child: BookTile(
                              imageUrl: book.coverPath,
                              bookName: book.title,
                              author: book.author,
                              chapters: book.chapters.toString()),
                        );
                      })),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}
