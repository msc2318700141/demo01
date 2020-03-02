import 'package:flutter/material.dart';
import 'app.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My cool app',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        iconTheme:IconThemeData(color: Colors.yellow),
        textTheme: TextTheme( 
            button: TextStyle(
          color: Colors.white,
        )),
      ),
      home: new App(),
    );
  }
}
