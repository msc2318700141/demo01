import 'package:flutter/material.dart';
class KengList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListContent()
    );
  }
}
class ListContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
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
        Row(children: <Widget>[
          
        ],)
      ],
    );
  }
}