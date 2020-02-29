
import 'package:demo01/components/popular/popular_item.dart';
import 'package:demo01/model/data.dart';
import 'package:flutter/material.dart';
import 'package:demo01/components/popular/popular_card.dart';
//import '../../model/data.dart';
class KengPage extends StatelessWidget{
  //final ProductListModal list;
  //KengPage(this.list);
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      width: deviceWidth,
      decoration: BoxDecoration(
        color: Color(0xFFF8F8F8),

      ),
      
      child:kengContent(context,deviceWidth),
    );
  }
}
Widget kengContent(BuildContext context,double deviceWidth){
    double itemWidth = deviceWidth * 168.5 / 360;
    double imageWidth = deviceWidth * 110.0 / 360;
    // List<Widget> listWidgets = productItemData.map((i){
    //   return Container(
    //     margin:EdgeInsets.only(bottom:5,left:2),
    //     padding: EdgeInsets.only(top:10,left:13,bottom:7),
    //     color:Colors.grey,
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: <Widget>[
    //         Text(
    //           i.desc,
    //           maxLines:1,
    //           overflow: TextOverflow.ellipsis,
    //         )

    //       ],
    //     ),
    //   );
    // }).toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(6),
          child: Container(
            height: 34,
            decoration: BoxDecoration(
              boxShadow:[
                BoxShadow(
                  color:Colors.white,
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
        Padding(
          padding: EdgeInsets.only(left:5),
          child:Container(
            decoration: BoxDecoration(color: Colors.white),
            child: Text(
            '近期热门',
              textAlign: TextAlign.left,
              style:TextStyle(
                fontSize: 20,
                color:Colors.black,
                letterSpacing: 1
              ),
            )
          ),
        ),
        Wrap(
          spacing: 2,
          children: <Widget>[
            Container(
              width: itemWidth,
              height:2*itemWidth/5,
              
              margin:EdgeInsets.only(bottom:5,left:10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color:Colors.yellow,
                
              ),
              child: Stack(
                alignment: const FractionalOffset(0.1, 0.9),
                children: <Widget>[
                  //Image.network('assets/images/1.jpg',),
                  Image.asset('assets/images/1.jpg',width: itemWidth,height:2*itemWidth/5 ,fit: BoxFit.cover,),
                  Text(
                    '盲盒大作战',
                    maxLines:1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white
                    ),
                  )

                ],
              ),
            ),
            Container(
              width: itemWidth,
              margin:EdgeInsets.only(bottom:5,left:10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color:Colors.yellow,
              ),
              child: Stack(
                alignment: const FractionalOffset(0.1, 0.9),
                children: <Widget>[
                  Image.asset('assets/images/2.jpg',width: itemWidth,height:2*itemWidth/5 ,fit: BoxFit.cover,),
                  Text(
                    '超人手办展',
                    maxLines:1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      
                    ),
                  )

                ],
              ),
            ),
            Container(
              width: itemWidth,
              margin:EdgeInsets.only(bottom:5,left:10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color:Colors.yellow,
              ),
              child: Stack(
                alignment: const FractionalOffset(0.1, 0.9),
                children: <Widget>[
                  Image.asset('assets/images/3.jpg',width: itemWidth,height:2*itemWidth/5,fit: BoxFit.cover,),
                  Text(
                    '忍者神坑',
                    maxLines:1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white
                    ),
                  )

                ],
              ),
            ),
            Container(
              width: itemWidth,
              margin:EdgeInsets.only(bottom:5,left:10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color:Colors.yellow,
              ),
              child: Stack(
                alignment: const FractionalOffset(0.1, 0.9),
                children: <Widget>[
                  Image.asset('assets/images/2.jpg',width: itemWidth,height:2*itemWidth/5 ,fit: BoxFit.cover,),
                  Text(
                    '盲盒大作战',
                    maxLines:1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white
                    ),
                  )

                ],
              ),
            )
          ],
        ),
        Container(
        child: Center(
          child: ListView(
            children: <Widget>[
              Container(
                color: Color(0xfff1f1f1),
                child: ListTile(
                  title: Text("Title1"),
                  subtitle: Text(
                      "Title1  subtitleTitle1  subtitleTitle1  "),
                  isThreeLine: true,
                  leading: CircleAvatar(
                    child: Icon(Icons.home),
                  ),
                  dense: true,
                  onTap: () => print("Title1"),
                ),
              ),
              ListTile(
                title: Text("Title2"),
                leading: CircleAvatar(
                  child: Icon(Icons.alarm),
                ),
                selected: true,
                trailing: Icon(Icons.add),
                onTap: () => print("Title2"),
                dense: false,
              ),
              ListTile(
                title: Text(
                    "Title3Title3Title3Title3Title3Title3Title3Title3Title3Title3Title3"),
                leading: CircleAvatar(
                  child: Icon(Icons.add),
                ),
                onTap: () => print("Title3"),
                enabled: false,
              ),
            ],
          ),
        )
        ),
        //Container
      ],
    );
  }

