
import 'package:demo01/components/popular/popular_item.dart';
import 'package:demo01/model/data.dart';
import 'package:flutter/material.dart';
import 'package:demo01/components/popular/popular_card.dart';
//import '../../model/data.dart';
class KengPage extends StatelessWidget{
  //final ProductListModal list;
  //KengPage(this.list);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:KengContent(),
    );
  }
}
class KengContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //double itemWidth = deviceWidth * 168.5 / 360;
    //double imageWidth = deviceWidth * 110.0 / 360;
    // List<Widget> listWidgets = productItemData.map((i){
    //   return Container(
    //     margin:EdgeInsets.only(bottom:5,left:2),
    //     padding: EdgeInsets.only(top:10,left:13,bottom:7),
    //     color:Colors.grey,
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: <Widget>[
    //         Text(
    //           i.desc,
    //           maxLines:1,
    //           overflow: TextOverflow.ellipsis,
    //         )

    //       ],
    //     ),
    //   );
    // }).toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(6),
          child: Container(
            width:343,
            height: 34,
            decoration: BoxDecoration(
              boxShadow:[
                BoxShadow(
                  color:Colors.grey[300],
                  blurRadius: 3,
                  spreadRadius: 0.2,
                )
              ],
              color:Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child:TextFormField(
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
                hintText: '输入坑或组织名称',
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
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top:20),
          child: Text(
            '近期热门',
            textAlign: TextAlign.left,
            style:TextStyle(
              fontSize: 30,
              color:Colors.black,
              letterSpacing: 1
            )
          ),
        ),
        Wrap(
          spacing: 2,
          children: <Widget>[
            Container(
              margin:EdgeInsets.only(bottom:5,left:2),
              padding: EdgeInsets.only(top:10,left:13,bottom:7),
              color:Colors.grey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'descyututututuyvuyuyu',
                    maxLines:1,
                    overflow: TextOverflow.ellipsis,
                  )

                ],
              ),
            ),
            Container(
              margin:EdgeInsets.only(bottom:5,left:2),
              padding: EdgeInsets.only(top:10,left:13,bottom:7),
              color:Colors.grey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'desc',
                    maxLines:1,
                    overflow: TextOverflow.ellipsis,
                  )

                ],
              ),
            ),
            Container(
              margin:EdgeInsets.only(bottom:5,left:2),
              padding: EdgeInsets.only(top:10,left:13,bottom:7),
              color:Colors.grey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'desc',
                    maxLines:1,
                    overflow: TextOverflow.ellipsis,
                  )

                ],
              ),
            ),
            Container(
              margin:EdgeInsets.only(bottom:5,left:2),
              padding: EdgeInsets.only(top:10,left:13,bottom:7),
              color:Colors.grey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'desc',
                    maxLines:1,
                    overflow: TextOverflow.ellipsis,
                  )

                ],
              ),
            )
          ],
        ),
        Container(
          padding: EdgeInsets.only(left:22),
          height:100,
          child:ListView.builder(
            itemCount: popularItemData.length,
            itemBuilder: (BuildContext context,int index){
              return PopularCard(
                popularItem:popularItemData[index]
              );
            }
          )
        )
      ],
    );
  }
}

