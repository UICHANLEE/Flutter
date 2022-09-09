import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helloworld/pages/createpostpage.dart';
import 'package:helloworld/cards/PostCard.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        GestureDetector(
          onTap: (){
              Get.to(CreatePostPage());
          },

          child: Container(
            margin: EdgeInsets.all(15),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1000),
              color: Colors.orange,
            ),
            child: Icon(Icons.add),
          )
        )
      ],
    );
  }
}