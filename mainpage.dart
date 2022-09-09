import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helloworld/mainpages/homescreen.dart';
import 'package:helloworld/mainpages/mylikescreen.dart';
import 'package:helloworld/mainpages/myscreen.dart';
import 'package:helloworld/mainpages/showgridscreen.dart';
import 'package:helloworld/testpage.dart';


class MainPage extends StatefulWidget {

  @override
  State<MainPage> createState() => _MainPageState();

}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  List<BottomNavigationBarItem> bottomItems=[
    BottomNavigationBarItem(
      label: '홈',
      icon: Icon(Icons.home_filled),
    ),
    BottomNavigationBarItem(
      label: '모아보기',
      icon: Icon(Icons.grid_view),
    ),
    BottomNavigationBarItem(
      label: '내가 좋아하는 컨텐츠',
      icon: Icon(Icons.favorite),
    ),
    BottomNavigationBarItem(
      label: '내 페이지',
      icon: Icon(Icons.account_circle),
    ),
  ];

  List pages=[
    HomeScreen(),
    ShowGridScreen(),
    MyLikeScreen(),
    MyScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: (){
            Get.to(TestPage());
          },
          child: Text('Main Page',style: TextStyle(fontFamily: 'NanumPenScript',fontSize: 30,color: Colors.black),),
        ) ,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),

      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 10,
          currentIndex: _selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (int index){
            setState(() {
              _selectedIndex = index;
            });
          },
          items:bottomItems,
      ),
      body: pages[_selectedIndex],
    );
  }
}