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
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Text("推荐话题"),
        ),
        Container(
            constraints: BoxConstraints(
              minWidth: 100,
              minHeight: 200
            ),
          ),
          Text(
            "we",
            softWrap: false,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          Row(
            children: <Widget>[
              Image.network(
                "wqd",
                width: 20,
                height: 20,
              ),
              Text("3"),
              Expanded(
                child: SizedBox(),
              ),
              // LikeButton(
              //   direction: Axis.horizontal,
              //   num: 1,
              // ),
            ],
          ),
        ],
      );
  }
}

