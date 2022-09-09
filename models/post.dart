import 'package:flutter/material.dart';

class Post{
  String key;
  String title;
  String explain;
  String firstPicUrl;
  int firstPicWidth;
  int firstPicHeiget;
  String authorName;
  int like;

  Post({
    required this.key,
    required this.title,
    required this.explain,
    required this.firstPicHeiget,
    required this.firstPicUrl,
    required this.authorName,
    required this.like,
    required this.firstPicWidth
  });
}