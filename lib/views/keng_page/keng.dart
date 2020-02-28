
import 'package:demo01/components/popular/popular_item.dart';
import 'package:flutter/material.dart';
import 'package:demo01/components/popular/popular_card.dart';
class KengPage extends StatefulWidget{
  @override
  KengState createState() => KengState();
}
class KengState extends State<KengPage>{  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:KengContent(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child:Icon(
          Icons.add,
          color:Colors.white,
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar:BottomNavigationBar(
        items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title:Text('首页')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title:Text('购买')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title:Text('坑')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title:Text('我的')
          )
        ],
        type:BottomNavigationBarType.fixed,
      ),
    );
  }
}
class KengContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
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

