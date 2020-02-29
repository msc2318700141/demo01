
import 'package:demo01/components/popular/popular_item.dart';
import 'package:demo01/model/data.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:demo01/components/popular/popular_card.dart';
//import '../../model/data.dart';
class KengPage extends StatelessWidget{
  //final ProductListModal list;
  //KengPage(this.list);
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      width: deviceWidth,
      decoration: BoxDecoration(
        color: Color(0xFFF8F8F8),

      ),
      
      child:kengContent(context,deviceWidth),
    );
  }
}
Widget kengContent(BuildContext context,double deviceWidth){
    double itemWidth = deviceWidth * 168.5 / 360;
    double imageWidth = deviceWidth * 110.0 / 360;
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
            height: 34,
            decoration: BoxDecoration(
              boxShadow:[
                BoxShadow(
                  color:Colors.white,
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
        Container(
          decoration: BoxDecoration(color: Colors.white),
          padding: EdgeInsets.only(left:10,bottom: 10),
          child: Text(
          '近期热门',
            textAlign: TextAlign.left,
            style:TextStyle(
              fontSize: 18,
              color:Colors.black,
              letterSpacing: 1
            ),
          ),
        ),
        Container(
          width: deviceWidth,
          decoration: BoxDecoration(color: Colors.white),
          child: Wrap(
          spacing: 2,
          children: <Widget>[
            Container(
              width: itemWidth,
              height:2*itemWidth/5,
              
              margin:EdgeInsets.only(bottom:5,left:10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color:Colors.yellow,
                
              ),
              child: Stack(
                alignment: const FractionalOffset(0.1, 0.9),
                children: <Widget>[
                  //Image.network('assets/images/1.jpg',),
                  Image.asset('assets/images/1.jpg',width: itemWidth,height:2*itemWidth/5 ,fit: BoxFit.cover,),
                  Text(
                    '盲盒大作战',
                    maxLines:1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white
                    ),
                  )

                ],
              ),
            ),
            Container(
              width: itemWidth,
              margin:EdgeInsets.only(bottom:5,left:10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color:Colors.yellow,
              ),
              child: Stack(
                alignment: const FractionalOffset(0.1, 0.9),
                children: <Widget>[
                  Image.asset('assets/images/2.jpg',width: itemWidth,height:2*itemWidth/5 ,fit: BoxFit.cover,),
                  Text(
                    '超人手办展',
                    maxLines:1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      
                    ),
                  )

                ],
              ),
            ),
            Container(
              width: itemWidth,
              margin:EdgeInsets.only(bottom:5,left:10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color:Colors.yellow,
              ),
              child: Stack(
                alignment: const FractionalOffset(0.1, 0.9),
                children: <Widget>[
                  Image.asset('assets/images/3.jpg',width: itemWidth,height:2*itemWidth/5,fit: BoxFit.cover,),
                  Text(
                    '忍者神坑',
                    maxLines:1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white
                    ),
                  )

                ],
              ),
            ),
            Container(
              width: itemWidth,
              margin:EdgeInsets.only(bottom:5,left:10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color:Colors.yellow,
              ),
              child: Stack(
                alignment: const FractionalOffset(0.1, 0.9),
                children: <Widget>[
                  Image.asset('assets/images/2.jpg',width: itemWidth,height:2*itemWidth/5 ,fit: BoxFit.cover,),
                  Text(
                    '盲盒大作战',
                    maxLines:1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white
                    ),
                  )

                ],
              ),
            )
          ],
        ),
        ),
        
        Container(
          padding: EdgeInsets.only(top:20,bottom:20,left: 10),
          margin: EdgeInsets.only(top:10,bottom:10),
          decoration: BoxDecoration(color: Colors.white),
          child:Column(children: <Widget>[

            Container(
              child:Row(
                children: <Widget>[
                  Image.asset('assets/images/3.jpg',width: 49,height:49,),

                  Container(
                    width: 320,
                    margin: EdgeInsets.only(left:10),
                    child: Column(children: <Widget>[
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              '神奇魔法超人',
                            ),
                            Text(
                              '17:56',
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              '会飞的鱼，我今天又淘到了好多手办玩具...',
                            ),
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(5),
                                color: Colors.red,
                              ),
                              child: Text(
                                '5',
                                style: TextStyle(color: Colors.white,)
                              ),
                            ) ,
                          ],
                        ),
                      ),
                    ],),
                  )
                
                ],
              )
            ),
            Container(
              child:Row(
                children: <Widget>[
                  Image.asset('assets/images/3.jpg',width: 49,height:49,),

                  Container(
                    width: 320,
                    margin: EdgeInsets.only(left:10),
                    child: Column(children: <Widget>[
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              '神奇魔法超人',
                            ),
                            Text(
                              '17:56',
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              '会飞的鱼，我今天又淘到了好多手办玩具...',
                            ),
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(5),
                                color: Colors.red,
                              ),
                              child: Text(
                                '5',
                                style: TextStyle(color: Colors.white,)
                              ),
                            ) ,
                          ],
                        ),
                      ),
                    ],),
                  )
                
                ],
              )
            ),
            Container(
              child:Row(
                children: <Widget>[
                  Image.asset('assets/images/3.jpg',width: 49,height:49,),

                  Container(
                    width: 320,
                    margin: EdgeInsets.only(left:10),
                    child: Column(children: <Widget>[
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              '神奇魔法超人',
                            ),
                            Text(
                              '17:56',
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              '会飞的鱼，我今天又淘到了好多手办玩具...',
                            ),
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(5),
                                color: Colors.red,
                              ),
                              child: Text(
                                '5',
                                style: TextStyle(color: Colors.white,)
                              ),
                            ) ,
                          ],
                        ),
                      ),
                    ],),
                  )
                
                ],
              )
            ),
          ],)
        ),
      ],
    );
  }

