import 'package:demo01/components/recent_hot.dart';
import 'package:flutter/material.dart';
import 'views/keng_page/keng.dart';
class App extends StatefulWidget{
  @override
  AppState createState() => AppState();
}
class AppState extends State<App>{
  //var _currentIndex = 0;
  //RecentHot recentHot;
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter企业实战'),
        leading: Icon(Icons.home),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right:20.0),
            child:GestureDetector(
              onTap:(){},
              child:Icon(Icons.search)
            )
          )
        ],
      ),
    );
    // return MaterialApp(
    //   title: 'Flutter SDK Demo',
    //   theme: ThemeData(
    //     textTheme: TextTheme( 
    //         button: TextStyle(
    //       color: Colors.white,
    //     )),
    //   ),
    //   home: KengPage(),
    // );
  }
}