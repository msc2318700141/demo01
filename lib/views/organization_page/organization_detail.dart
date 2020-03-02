import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:micro_flutter_sdk/components.dart';

class OrganizationDetail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child:Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            Image.asset('assets/images/1.jpg',width: 49,height: 49,),
            Column(children: <Widget>[
              Text('狂铁战士组织',style: TextStyle(fontSize: 20),),
              Text('166成员',style: TextStyle(fontSize: 12,color: Color(0xFF999999),))
            ],)
          ],)
        ),
        Padding(padding: EdgeInsets.only(top:10,left:16),
          child: Column(children: <Widget>[
            Text('组织成员'),
            Row(children: <Widget>[
              Column(children: <Widget>[
                SizedBox(
                  height: 100,
                  width: 100,
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.grey[200],
                    valueColor: AlwaysStoppedAnimation(Colors.blue),
                    value: .7,
                  ),
                ),
                Text(
                  '男-89人',
                )
              ],),
              Column(children: <Widget>[
                SizedBox(
                  height: 100,
                  width: 100,
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.grey[200],
                    valueColor: AlwaysStoppedAnimation(Colors.blue),
                    value: .7,
                  ),
                ),
                Text(
                  '男-89人',
                )
              ],),
              Column(children: <Widget>[
                SizedBox(
                  height: 100,
                  width: 100,
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.grey[200],
                    valueColor: AlwaysStoppedAnimation(Colors.blue),
                    value: .7,
                  ),
                ),
                Text(
                  '男-89人',
                )
              ],)
            ],),
          ],),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
          height: 100.5,
          child: Column(
            children: <Widget>[
              Text(
                '管理员',

              ),
              Row(children: <Widget>[
                CircleAvatar(
                  child: Image.network('assets/images/1.jpg'),
                  radius: 39,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Status'),
                    Text('群主')
                  ],
                )
              ],)
            ],
          ),
        ),
        Padding(padding: EdgeInsets.only(top:10),
          child: Container(
            decoration: BoxDecoration(
              border:Border.all(color: Colors.black,width: 1,style: BorderStyle.solid)
            ),
            child: Text(
              '申请加入'
            ),
          ),
        ),
      ],),
    );
  }
}