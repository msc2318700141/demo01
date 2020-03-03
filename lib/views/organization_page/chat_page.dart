import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('组织名称'),
      ),
      body: ChatContent(),
    );
  }
}
class ChatContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        Container(child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top:21,bottom:15),
            child: Text(
              '2020-2-20 17：56',
              style: TextStyle(
                color: Color(0xFFF1F1F1),
                fontSize: 12 
              ),
            ),
          ),
          Container(child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                child: Image.network('assets/images/1.jpg'),
                radius: 39,
              ),
              Padding(padding: EdgeInsets.only(top:11,left:21,right:21,bottom:11),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Text(
                    '我上次买的什么手办',
                    overflow: TextOverflow.visible,
                  ),
                ),
              )
            ],
          ),),
          Container(child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                child: Image.network('assets/images/1.jpg'),
                radius: 39,
              ),
              Padding(padding: EdgeInsets.only(top:11,left:21,right:21,bottom:11),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Text(
                    '怎么？你也要买么？',
                  ),
                ),
              )
            ],
          ),)
        ],),),
        Container(child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top:21,bottom:15),
            child: Text(
              '2020-2-20 17：56',
              style: TextStyle(
                color: Color(0xFFF1F1F1),
                fontSize: 12 
              ),
            ),
          ),
          Container(child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                child: Image.network('assets/images/1.jpg'),
                radius: 39,
              ),
              Padding(padding: EdgeInsets.only(top:11,left:21,right:21,bottom:11),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Text(
                    '可以给我发几张图片么？',
                  ),
                ),
              )
            ],
          ),),
          Container(child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top:11,left:21,right:21,bottom:11),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Text(
                    '不买，我就看看',
                  ),
                ),
              ),
              CircleAvatar(
                child: Image.network('assets/images/1.jpg'),
                radius: 39,
              ),
              Image.asset('assets/images/sending.jpg',),
            ],
          ),),
          Container(child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top:11,left:21,right:21,bottom:11),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Text(
                    '不买，我就看看',
                  ),
                ),
              ),
              CircleAvatar(
                child: Image.network('assets/images/1.jpg'),
                radius: 39,
              ),
              Image.asset('assets/images/fail.jpg',),
            ],
          ),),
        ],),),
      ],),
    );
  }
}