import 'package:json_annotation/json_annotation.dart';


class Book {
  String title;
  String resume;
  String author;
  String cover;
 Book({
    this.title,
    this.resume,
    this.author,
    this.cover,

  });

  factory Book.fromJson(Map<String, dynamic> parsedJson){
    return Book(
        title: parsedJson['title'],
        resume : parsedJson['resume'],
        author : parsedJson ['author'],
        cover : parsedJson ['cover'],
     );
  }


}
