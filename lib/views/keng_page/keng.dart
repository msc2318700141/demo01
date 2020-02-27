
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
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.close,
                  color: Colors.grey,
                  size: 28,
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.close,
                  color:Colors.black,
                  size:20,
                ), 
                onPressed: (){
                  Navigator.pop(context);
                }
              )
            ],)
        ),
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
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal:22),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                flex: 9,
                child: Container(
                  height: 50,
                  alignment: Alignment.centerLeft,
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
                      hintText: '您想点些什么?',
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
              Flexible(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300],
                        blurRadius: 3,
                        spreadRadius: 0.2
                      )
                    ],
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.close,
                      color: Colors.grey,
                      size: 28,
                    ),
                  )
                ),
              )
            ],
          )
        ),
        Padding(
          padding: EdgeInsets.only(
            left:22,top:20
          ),
          child: Text(
            '甜品分类',
            style:TextStyle(
              fontSize: 20,
              color:Colors.black,
              fontWeight: FontWeight.w700,
              letterSpacing: 1
            )
          ),
        ),
        Container(
          padding: EdgeInsets.only(left:22),
          height:100,
          child:ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context,int index){
              return ;
            }
          )
        )
      ],
    );
  }
}

