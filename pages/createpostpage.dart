
// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'dart:math';


class CreatePostPage extends StatefulWidget {

  @override
  _CreatePostPageState createState() => _CreatePostPageState();

}

class _CreatePostPageState extends State<CreatePostPage> {

  FirebaseFirestore fireStore=FirebaseFirestore.instance;

  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  String postTitle  ="";
  String content = "";

  String generateRandomString(int len) {
    var r = Random();
    String chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    return List.generate(len, (index) => chars[r.nextInt(chars.length)]).join();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("포스팅작성하기"),),
      body: Column(
        children: [
          TextField(
            controller: titleController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: '포스팅제목',
            ),),
          TextField(
            controller: contentController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: '포스팅내용',
            ),),
          ElevatedButton(
              onPressed: () {
                String postKey = generateRandomString(16);

                fireStore.collection('Post').doc(postKey).set({
                  "Key": postKey,
                  "title": postTitle,
                  "explain": content,
                  "firstPicUrl": "",
                  "firstPicWidth": 0,
                  "firstPicHeight": 0,
                  "authorName": "huni",
                  "like": 0
                });
              },
            child: Text("Upload"),
              ),

        ],
      ),
    );
  }
}