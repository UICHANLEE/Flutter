import 'dart:math';


import 'package:flutter/material.dart';
import 'package:scrolling_page_indicator/scrolling_page_indicator.dart';

class PostCard extends StatefulWidget {
  int number;

  PostCard({required this.number});

  @override
  _PostCardState createState() => _PostCardState();

}

class _PostCardState extends State<PostCard> {
  double initRatio = 0.5;
  @override
  void initState() {

    pageLength = 3+Random().nextInt(5);

    initRatio = testint[Random().nextInt(16)]*0.1;
    // TODO: implement initState
    super.initState();
  }

  late int pageLength;

  int currentPageIndex = 0;

  PageController _controller = PageController();

  List<String> testImageList=[
    'https://blogfiles.pstatic.net/MjAyMjA2MjhfMjI1/MDAxNjU2NDAxMzk1OTIw.izFkVJNYL9Reecc8cbDqRa7TzviQI7sgJQuz5-GZT_gg.cJUm5fW1SrHrmI04FmjTF-_MDq6OAVwMZdLsqK9J0pAg.JPEG.sde0110/20220628%EF%BC%BF122613.jpg',
    'https://blogfiles.pstatic.net/MjAyMjA2MjlfNTAg/MDAxNjU2NDY2NzMxMjkx.McXKrXKHdkxh5W-XQrnKzPv8Vc-IbwytgUlGnDeMOvcg.8eSlb9D37_R6TV6TCiJx7lY_eAT0Gk8W_RlzFykGCUEg.JPEG.sde0110/20220628%EF%BC%BF175254.jpg',
    'https://blogfiles.pstatic.net/MjAyMjA2MjlfNTAg/MDAxNjU2NDY2NzMxMjkx.McXKrXKHdkxh5W-XQrnKzPv8Vc-IbwytgUlGnDeMOvcg.8eSlb9D37_R6TV6TCiJx7lY_eAT0Gk8W_RlzFykGCUEg.JPEG.sde0110/20220628%EF%BC%BF175254.jpg',
    'https://blogfiles.pstatic.net/MjAyMjA2MjlfNTAg/MDAxNjU2NDY2NzMxMjkx.McXKrXKHdkxh5W-XQrnKzPv8Vc-IbwytgUlGnDeMOvcg.8eSlb9D37_R6TV6TCiJx7lY_eAT0Gk8W_RlzFykGCUEg.JPEG.sde0110/20220628%EF%BC%BF175254.jpg',
    'https://blogfiles.pstatic.net/MjAyMjA2MjlfNTAg/MDAxNjU2NDY2NzMxMjkx.McXKrXKHdkxh5W-XQrnKzPv8Vc-IbwytgUlGnDeMOvcg.8eSlb9D37_R6TV6TCiJx7lY_eAT0Gk8W_RlzFykGCUEg.JPEG.sde0110/20220628%EF%BC%BF175254.jpg',
    'https://blogfiles.pstatic.net/MjAyMjA2MjlfNTAg/MDAxNjU2NDY2NzMxMjkx.McXKrXKHdkxh5W-XQrnKzPv8Vc-IbwytgUlGnDeMOvcg.8eSlb9D37_R6TV6TCiJx7lY_eAT0Gk8W_RlzFykGCUEg.JPEG.sde0110/20220628%EF%BC%BF175254.jpg',
    'https://blogfiles.pstatic.net/MjAyMjA2MjlfNTAg/MDAxNjU2NDY2NzMxMjkx.McXKrXKHdkxh5W-XQrnKzPv8Vc-IbwytgUlGnDeMOvcg.8eSlb9D37_R6TV6TCiJx7lY_eAT0Gk8W_RlzFykGCUEg.JPEG.sde0110/20220628%EF%BC%BF175254.jpg',
  ];
  List testint = [5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];




  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [

          AspectRatio(
            aspectRatio: initRatio,
            child:Stack(
              alignment: Alignment.topRight,

              children: [
                PageView.builder(
                  itemCount: pageLength,
                  itemBuilder: (BuildContext context,int index) {
                    return Container(
                      child: Image.network(
                        testImageList[Random().nextInt(5)], fit: BoxFit.cover,),
                    );
                  },
                  controller: _controller,
                  onPageChanged: (value){
                    setState(() {
                      currentPageIndex=value;
                    });
                  },
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal:10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(500)
                ),
                  child: Text('${currentPageIndex+1} / $pageLength',style: TextStyle(color: Colors.white,),),
              )
            ],

            )
          ),

        Container(
            height: 40,
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: MediaQuery.of(context).size.width,
            child: Stack(
             alignment: Alignment.center,
             children: [
                Row(
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

                    Icon(Icons.bookmark_border)
                      ],
                    ),
                    ScrollingPageIndicator(
                        dotColor: Colors.grey,
                        dotSelectedColor: Colors.deepPurple,
                        dotSize: 6,
                        dotSelectedSize: 8,
                        dotSpacing: 12,
                        controller: _controller,
                        itemCount: pageLength,
                        orientation: Axis.horizontal
                    ),
                    Icon(Icons.bookmark_border)
                  ],
                ),
          ),

      ]
      ),
    );

  }
}
