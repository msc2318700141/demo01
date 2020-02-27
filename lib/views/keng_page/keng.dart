import 'dart:html';

import 'package:flutter/material.dart';
class KengPage extends StatefulWidget{
  @override
  KengState createState() => KengState();
}
class KengState extends State<KengPage>{  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:KengContent()
    );
  }
}
class KengContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal:10),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: null,
                onPressed: null
              ),
              IconButton(icon: null, onPressed: null)
            ],)
        )
        SizedBox(height:5,),
        Container(
          padding: EdgeInsets.only(left:22),
          alignment: Alignment.centerLeft,
          child:Text(
            '配送至',
            style:TextStyle(
              fontSize: 16,
              color: Colors.black45,
              fontWeight: FontWeight.w500,
              letterSpacing: 1
            ),
          )
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal:22),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(
                null,
                size:15
              ),
              Text(
                '当前位置',
                style:TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1
                )
              )
            ],
          )
        )
      ],
    );
  }
}

