import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helloworld/makepostpage.dart';

class TestPage extends StatefulWidget {



  @override
  _TestPageState createState() => _TestPageState();

}

class _TestPageState extends State<TestPage> {

  FirebaseFirestore fireStore=FirebaseFirestore.instance;

  var name="??";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("테스트페이지"),),
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 100,),
              Text(name),
              ElevatedButton(
                  onPressed: () async{
                    DocumentSnapshot test1Data=await fireStore.collection('First').doc('test1').get();

                    setState(() {
                      name = test1Data['name'];
                    });

                  },
                  child: Text('데이터불러오기')
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.to(MakePostPage());
                  },
                  child: Text("포스팅올리기 페이지로"),

              ),
            ],
          ),
        ),
      ),

    );
  }
}