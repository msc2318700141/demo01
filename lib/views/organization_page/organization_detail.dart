import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrganizationDetail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('组织详情'),
      ),
      body: OrganizationDetailContent(),
    );
  }
}
class OrganizationDetailContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF8F8F8)
      ),
      child: Column(children: <Widget>[
        Padding(padding: EdgeInsets.only(top:30,left:16),
          child:Row(children: <Widget>[
            Container(
              child: Image.asset('assets/images/1.jpg'),
            ),
            Column(children: <Widget>[
              Text('狂铁战士组织',style: TextStyle(fontSize: 20),),
              Text('166成员',style: TextStyle(fontSize: 12,color: Color(0xFF999999),)
            ],)
          ],)
        ),
        Padding(padding: EdgeInsets.only(top:10,left:16),
          child: Column(children: <Widget>[
            Text('组织成员'),
            Row(children: <Widget>[
              Column(children: <Widget>[
                LinearProgressIndicator(
                  backgroundColor: Colors.grey[200],
                  valueColor: AlwaysStoppedAnimation(Colors.blue),
                  value: .5, 
                ),
                Text(
                  '男-89人',
                )
              ],)
            ],),
            Row(children: <Widget>[
              Column(children: <Widget>[
                LinearProgressIndicator(
                  backgroundColor: Colors.grey[200],
                  valueColor: AlwaysStoppedAnimation(Colors.blue),
                  value: .5, 
                ),
                Text(
                  '男-89人',
                )
              ],)
            ],),
            Row(children: <Widget>[
              Column(children: <Widget>[
                LinearProgressIndicator(
                  backgroundColor: Colors.grey[200],
                  valueColor: AlwaysStoppedAnimation(Colors.blue),
                  value: .5, 
                ),
                Text(
                  '男-89人',
                )
              ],)
            ],)
          ],),
        )
      ],),
    );
  }
}