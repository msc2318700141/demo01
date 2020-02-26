import 'package:demo01/components/recent_hot.dart';
import 'package:flutter/material.dart';
class App extends StatefulWidget{
  @override
  AppState createState() => AppState();
}
class AppState extends State<App>{
  //var _currentIndex = 0;
  RecentHot recentHot;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text('flutter'),
        leading: Icon(Icons.home),
        actions:<Widget>[
          Padding(
            padding:EdgeInsets.only(right:20.0),
            child:GestureDetector(
              onTap: (){},
              child:Icon(
                Icons.search,
              )
            )
          )
        ]
      )
    );
  }
}