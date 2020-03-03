import 'package:demo01/components/recent_hot.dart';
import 'package:demo01/views/organization_page/chat_page.dart';
import 'package:flutter/material.dart';
import 'views/keng_page/keng.dart';
import 'views/keng_page/keng_list.dart';
import 'views/organization_page/organization_detail.dart';
import 'views/organization_page/organization_page.dart';
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
      //body:KengPage(),
      // body:KengList(),
      body: ChatPage(),
      //body:OrganizationDetail(),
      //body:Organization(),
      
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