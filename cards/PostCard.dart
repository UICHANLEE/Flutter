import 'dart:math';

import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  int number;

  PostCard({required this.number});

  @override
  _PostCardState createState() => _PostCardState();

}

class _PostCardState extends State<PostCard> {

  List<String> testImageList=[
    'https://blogfiles.pstatic.net/MjAyMjA2MjhfMjI1/MDAxNjU2NDAxMzk1OTIw.izFkVJNYL9Reecc8cbDqRa7TzviQI7sgJQuz5-GZT_gg.cJUm5fW1SrHrmI04FmjTF-_MDq6OAVwMZdLsqK9J0pAg.JPEG.sde0110/20220628%EF%BC%BF122613.jpg',
    'https://blogfiles.pstatic.net/MjAyMjA2MjlfNTAg/MDAxNjU2NDY2NzMxMjkx.McXKrXKHdkxh5W-XQrnKzPv8Vc-IbwytgUlGnDeMOvcg.8eSlb9D37_R6TV6TCiJx7lY_eAT0Gk8W_RlzFykGCUEg.JPEG.sde0110/20220628%EF%BC%BF175254.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 50,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Row(
                  children: const [
                    CircleAvatar(),
                    SizedBox(width: 5,),
                    Text('s_rloorn')
                  ],
                ),

                Icon(Icons.subject),
              ],
            ),
          ),
          Container(

              child: Image.network(testImageList[Random().nextInt(3)]),

          ),
          Container(
            height: 40,
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: MediaQuery.of(context).size.width,
            color: Colors.redAccent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(Icons.favorite_border),
                    SizedBox(width: 7,),
                    Icon(Icons.chat_outlined),
                    SizedBox(width: 7,),
                    Icon(Icons.send)
                  ],
                ),
                Container(width: 60,child: Text('dongeun'),),
                Icon(Icons.bookmark_border)
              ],
            ),
          ),
      ]
      ),
    );

  }
}
