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
      appBar: MicroAppBar(
        elevation: 0,
        title: MicroSearchField(
          //controller: tagController,
//          onTap: _jumpToSearch,
        //  onSubmitted: _onSubmitted,
          enabled: true,
        ),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("取消"),
          )
        ],
      ),
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