import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Organization extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrganizationContent(),
    );
  }
}
class OrganizationContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF8F8F8),
      ),
      child: Column(
        children: <Widget>[
          Column(children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset('assets/images/1.jpg',width: 64,height: 64,),
                Column(children: <Widget>[
                  Text('汽车总动员'),
                  Text('1029组织 1029成员')
                ],)
              ],
            ),
            Text('简介：玩具的关系，在人和人之间也存在着—--一些人是另一些人的玩具，怎么也摆脱不了被玩的命运---有很多不同形式的表现，而且，在绝大多数情况下，。。。',
              maxLines: 3,
            )
          ],),
          Container(
            margin: EdgeInsets.only(bottom:10),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            Text('我的组织'),
            Row(children: <Widget>[
              Image.asset('assets/images/1.jpg',width: 49,height: 49,),
              Row(
                children: <Widget>[
                  Column(
                    mainAxisAlignment:MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                    Text('神奇魔法人'),
                    Text('1370粉丝'),
                    Text('组织简介，玩具的关系，在人和人之间也有',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    )
                  ],),
                  FlatButton(
                    color: Colors.blue,
                    highlightColor: Colors.blue[700],
                    splashColor: Colors.black,
                    child: Text("吹水"),
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    onPressed: () {},
                  )
                ],
              )
            ],)
          ],),
          ),
          Container(
            margin: EdgeInsets.only(bottom:10),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            Text('我的组织'),
            Row(children: <Widget>[
              Image.asset('assets/images/1.jpg',width: 49,height: 49,),
              Row(
                children: <Widget>[
                  Column(
                    mainAxisAlignment:MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                    Text('神奇魔法人'),
                    Text('1370粉丝'),
                    Text('组织简介，玩具的关系，在人和人之间也有',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    )
                  ],),
                  FlatButton(
                    color: Colors.blue,
                    highlightColor: Colors.blue[700],
                    splashColor: Colors.black,
                    child: Text("吹水"),
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    onPressed: () {},
                  )
                ],
              )
            ],)
          ],),
          )
        ],
      ),
    );
  }
}