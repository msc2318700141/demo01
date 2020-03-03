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
                color: Colors.black12,
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
                color: Colors.black12,
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
                  child: Image.asset(
                    'assets/images/2.jpg',width: 100,height:100
                  )
                ),
              )
            ],
          ),),
          Container(child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Image.asset('assets/images/sending.png',),
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
            ],
          ),),
          Container(child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Image.asset('assets/images/fail.png',),
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
            ],
          ),),
        ],),),
        Container(
          child: Row(
            children: <Widget>[
              Icon(Icons.add),
              TextFormField(
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                ),
                cursorColor: Colors.black54,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    )
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color:Colors.transparent,
                    ),
                  ),
                  hintText: '请输入发送内容',
                  helperStyle: TextStyle(
                    color:Colors.black38,
                    fontSize: 18
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    size:18,
                    color:Colors.black54,
                  )
                ),
              ),
              Text('发送',style: TextStyle(color: Color(0XFFFFE300)),)
            ],
          ),
        )
      ],),
    );
  }
}