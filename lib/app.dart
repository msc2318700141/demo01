import 'package:demo01/components/recent_hot.dart';
import 'package:flutter/material.dart';
import 'views/keng_page/keng.dart';
class App extends StatefulWidget{
  @override
  AppState createState() => AppState();
}
class AppState extends State<App>{
  //var _currentIndex = 0;
  RecentHot recentHot;
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter SDK Demo',
      // initialRoute: "/",
      theme: ThemeData(
        platform: TargetPlatform.iOS,
        primarySwatch: Colors.grey,
        primaryColor: Colors.redAccent,
        brightness: Brightness.light,
        buttonColor: Colors.red,
        accentColor: Colors.grey,
        hoverColor: Colors.redAccent,
        primaryColorBrightness: Brightness.light,
        appBarTheme: AppBarTheme(
          brightness: Brightness.light,
          color: Colors.white,
        ),
        focusColor: Colors.redAccent,
        buttonTheme: ButtonThemeData(
          textTheme: ButtonTextTheme.primary,
          buttonColor: Colors.redAccent,
        ),
        textTheme: TextTheme(
            button: TextStyle(
          color: Colors.white,
        )),
      ),
      home: KengPage(),
    );
  }
}