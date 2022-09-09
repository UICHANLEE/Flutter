import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helloworld/mainpage.dart';
// ignore_for_file: prefer_const_constructors

class LandingPage extends StatefulWidget {

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3),(){
      Get.offAll(MainPage());
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset('assets/image/landing.jpg',fit: BoxFit.cover,)

          ),
          CircularProgressIndicator()
        ],
      )

    );
  }
}