import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

class LandingPage extends StatefulWidget {

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image.asset('assets/image/landing.jpg',fit: BoxFit.cover,)

      ),
    );
  }
}