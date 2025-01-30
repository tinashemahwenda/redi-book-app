import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:redi/components/bubble_tile.dart';
import 'package:redi/components/cool_navigationbar.dart';
//import 'package:redi/components/cool_navigationbar.dart';

//import 'package:redi/components/searchbox.dart';
import 'package:redi/constants/constants.dart';
import 'package:redi/models/book.dart';
import 'package:redi/screens/chapter_page.dart';
//import 'package:redi/screens/favorites_page.dart';
import '../components/bookTile.dart';
//import '../components/new_homenavbar.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
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

        print(Colors.deepPurple.hashCode);
        print(Colors.white30.value);
      });
    } catch (e) {
      print('Error in loading data $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: CoolNavigationbar()),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: AppMeasure.width,
                    height: AppMeasure.height / 5,
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Continue Reading',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: AppMeasure.width,
                            height: AppMeasure.height / 10,
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 5),
                              child: Row(
                                spacing: 10,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      child: Image.asset(
                                        'assets/images/book-cover-2.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        'Dzinza RaChiedza',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        'Chapters: 10',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                  Expanded(child: SizedBox()),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
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
          ),
        ));
  }
}
