import 'package:flutter/material.dart';
class KengList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('坑'),
        backgroundColor: Colors.white,
      ),
      body:ListContent()
    );
  }
}
class ListContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top:20,left:20,right:20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '兴趣推荐',
                  style: TextStyle(
                    fontSize: 30,
                    color:Colors.black54,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  '取消保存',
                  style: TextStyle(
                    fontSize: 22,
                    color:Colors.black12,
                  ),
                )
              ],
            ),  
          ),
          RecommendList(),
          ClubList(),
        ],
      )
    );
  }
}
class RecommendList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(child:
    Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left:10,bottom: 10),
          child: Column(
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Image.asset('assets/images/1.jpg',width: 43,height:43 ),
                    Text('盲盒大作战')
                  ],
                ),
              ),
              Text('热门组织一号',style: TextStyle(color:Colors.grey),),
              Text('热门组织牛红二号',style: TextStyle(color:Colors.grey)),
              Text('超级热门组织三号',style: TextStyle(color:Colors.grey)),
          ],),
        ),
        Container(
          margin: EdgeInsets.only(left:10),
          child: Column(
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Image.asset('assets/images/1.jpg',width: 43,height:43 ),
                    Text('盲盒大作战')
                  ],
                ),
              ),
              Text('热门组织一号',style: TextStyle(color:Colors.grey),),
              Text('热门组织牛红二号',style: TextStyle(color:Colors.grey)),
              Text('超级热门组织三号',style: TextStyle(color:Colors.grey)),
          ],),
        )
      ],),
    );
  }
}
class ClubList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              Image.asset('assets/images/1.jpg',width: 65,height: 65),
              Container(
                margin: EdgeInsets.only(left:20),
                child: Text('变形金刚俱乐部',style: TextStyle(
                fontSize: 12
              ),),)
            ],
          ),
        ),
        Container(
          child: Row(
            children: <Widget>[
              Image.asset('assets/images/1.jpg',width: 65,height: 65),
              Container(
                margin: EdgeInsets.only(left:20),
                child: Text('变形金刚俱乐部',style: TextStyle(
                fontSize: 12
              ),),)
            ],
          ),
        ),
        Container(
          child: Row(
            children: <Widget>[
              Image.asset('assets/images/1.jpg',width: 65,height: 65),
              Container(
                margin: EdgeInsets.only(left:20),
                child: Text('变形金刚俱乐部',style: TextStyle(
                fontSize: 12
              ),),)
            ],
          ),
        ),
        Container(
          child: Row(
            children: <Widget>[
              Image.asset('assets/images/1.jpg',width: 65,height: 65),
              Container(
                margin: EdgeInsets.only(left:20),
                child: Text('变形金刚俱乐部',style: TextStyle(
                fontSize: 12
              ),),)
            ],
          ),
        )
      ],),
    );
  }
}