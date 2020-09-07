// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Book _$BookFromJson(Map<String, dynamic> json) {
  return Book()
    ..title = json['title'] as String
    ..resume = json['resume'] as String
    ..author = json['author'] as String
    ..cover = json['cover'] as String;
}

Map<String, dynamic> _$BookToJson(Book instance) => <String, dynamic>{
      'title': instance.title,
      'resume': instance.resume,
      'author': instance.author,
      'cover': instance.cover
    };
