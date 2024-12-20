import 'dart:convert';

class Book {
  final String title;
  final String author;
  final String coverPath;
  final List<Chapter> chapters;

  Book({
    required this.title,
    required this.author,
    required this.chapters,
    required this.coverPath,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
        title: json['title'],
        author: json['author'],
        coverPath: json['coverPath'],
        chapters: List<Chapter>.from(
          json['chapters'].map((chapterJson) => Chapter.fromJson(chapterJson)),
        ));
  }
}

class Chapter {
  final int chapter;
  final String title;
  final String content;
  Chapter({
    required this.chapter,
    required this.title,
    required this.content,
  });

  factory Chapter.fromJson(Map<String, dynamic> json) {
    return Chapter(
      chapter: json['chapter'],
      title: json['title'],
      content: json['content'],
    );
  }
}

List<Book> parseBooks(String jsonData) {
  final parsed = json.decode(jsonData).cast<Map<String, dynamic>>();
  return parsed.map<Book>((json) => Book.fromJson(json)).toList();
}
