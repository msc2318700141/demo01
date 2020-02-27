import 'package:flutter/material.dart';
class KengPage extends StatefulWidget{
  @override
  KengState createState() => KengState();
}
class KengState extends State<KengPage>{  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Refresh(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Text("推荐话题"),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 130.0,
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              //创建列表项
              return Swiper(
                pagination: SwiperPagination(),
                itemBuilder: _swiperBuilder,
                itemCount: swiperItemCount,
                scrollDirection: Axis.horizontal,
//                autoplay: true,
                onTap: _goOtherApp,
              );
            }, childCount: 1), //50个列表项
          ),
          //PostList(postPage.list),
        ],
      ),
    );
  }
}



