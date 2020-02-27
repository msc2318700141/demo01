
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

