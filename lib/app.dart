import 'package:demo01/components/recent_hot.dart';
import 'package:flutter/material.dart';
import 'views/keng_page/keng.dart';
import 'views/keng_page/keng_list.dart';
import 'views/organization_page/organization_detail.dart';
import 'views/chat_page/chat_page.dart';
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
      //body:ChatPage(),
      //body:OrganizationDetail(),
      body:Organization(),
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
            title:Text('购买')
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