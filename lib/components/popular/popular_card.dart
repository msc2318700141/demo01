
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'popular_item.dart';
class PopularCard extends StatelessWidget{
  final PopularItem popularItem;
  PopularCard({this.popularItem});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top:20,right:25),
      child:Stack(
        alignment: Alignment.bottomLeft,
        children: <Widget>[
          Container(
            height: 300,
            width:240,
            decoration: BoxDecoration(
              image:DecorationImage(
                image: AssetImage(popularItem.image),
                fit:BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(0, 0, 0, 0.1),
                    Color.fromRGBO(0, 0, 0, 0.3),
                  ],
                  begin:FractionalOffset.topCenter,
                  end:FractionalOffset.bottomCenter
                )
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left:20),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left:170,top:20),
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape:BoxShape.circle,
                      boxShadow: [
                        //color:Colors.black12,
                        //shape:BoxShape.circle,
                        BoxShadow(
                          color:Colors.black12,
                          blurRadius:3,
                          spreadRadius:0.3,
                        )
                      ]
                    ),
                    child: Icon(
                      Icons.favorite_border,
                      color:Color(0xFFf06167),
                      size:18,
                    ),
                  ),
                ),
                Text(
                  popularItem.title,
                  style: TextStyle(
                    fontSize: 16,
                    color:Colors.white,
                  ),
                ),
                Text(
                  popularItem.category,
                  style: TextStyle(
                    fontSize: 16,
                    color:Colors.white,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 0.5
                  ),
                ),
                Text(
                  '111',
                  
                )
              ],
            )
          )
        ],
      )
    );
  }
}