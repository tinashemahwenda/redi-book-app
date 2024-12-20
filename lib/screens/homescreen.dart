import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:redi/components/navbar.dart';
import 'package:redi/components/searchbox.dart';
import 'package:redi/constants/constants.dart';
import 'package:redi/models/book.dart';
import 'package:redi/screens/chapter_page.dart';

import '../components/bookTile.dart';

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
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Home',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                      ),
                    ),
                    Icon(
                      Icons.list,
                      size: 30,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Searchbox(),
                Expanded(
                  child: ListView.builder(
                      itemCount: _books.length,
                      itemBuilder: (context, index) {
                        final book = _books[index];
                        return GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ChapterPage(
                                  book: book,
                                ),
                              )),
                          child: BookTile(
                            imageUrl: book.coverPath,
                            bookName: book.title,
                            author: book.author,
                            chapters:
                                '${book.chapters.length.toString()} Chapters',
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ));
  }
}
