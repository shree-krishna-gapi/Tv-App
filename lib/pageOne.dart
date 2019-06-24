import 'package:flutter/material.dart';


import 'tvPlayer.dart';



class PageOne extends StatelessWidget {
  @override
  var icon_list = [
    {
      "name": "Ntv",
      "picture": "assets/nepali/ntv.png",
    },
    {
      "name": "Kantipur",
      "picture": "assets/nepali/kantipur.jpg",
    },
    {
      "name": "News 24",
      "picture": "assets/nepali/news24.png",
    },
    {
      "name": "Avenues",
      "picture": "assets/nepali/avenues.png",
    },{
      "name": "Ntv",
      "picture": "assets/nepali/ntv.png",
    },
    {
      "name": "Kantipur",
      "picture": "assets/nepali/kantipur.jpg",
    },
    {
      "name": "News 24",
      "picture": "assets/nepali/news24.png",
    },
    {
      "name": "Avenues",
      "picture": "assets/nepali/avenues.png",
    },{
      "name": "Ntv",
      "picture": "assets/nepali/ntv.png",
    },
    {
      "name": "Kantipur",
      "picture": "assets/nepali/kantipur.jpg",
    },
    {
      "name": "News 24",
      "picture": "assets/nepali/news24.png",
    },
    {
      "name": "Avenues",
      "picture": "assets/nepali/avenues.png",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25.0, right: 25.0),
      child: OrientationBuilder(builder: (context, orientation)
      {
        return GridView.count(
          crossAxisCount: orientation == Orientation.portrait ? 3 : 5,
          crossAxisSpacing: 30.0,
          mainAxisSpacing: 20.0,
          children: List.generate(icon_list.length, (index) {
            return Center(
              child: Single_prod(
                item_pic: icon_list[index]['picture'],
                icon_name: icon_list[index]['name'],
              ),
            );
          }),
        );

      }),
    );
  }

}

class Single_prod extends StatelessWidget {
  final item_pic;
  final icon_name;
  Single_prod({this.item_pic,this.icon_name});
  @override
  Widget build(BuildContext context) {
    return Card(

//        tag: item_pic,
        child: Material(
          child: InkWell(customBorder: Border.all(width:2.0,color: Colors.black),
            child: GridTile(
                footer: Container(
                  color: Colors.black54,
                  child: ListTile(leading: Text(icon_name,style: TextStyle(fontSize: 12.0,color: Colors.white,),),),
                  height: 40.0,
                ),
                child: Image.asset(item_pic,fit: BoxFit.fitWidth,),
            ),
            onTap: (){ Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new TvPlayer()));}

          ),textStyle: TextStyle(color: Colors.white),
        ),

    );
  }













}





//
//child: GridTile(
//mainAxisAlignment: MainAxisAlignment.center,
//children: <Widget>[
//OrientationBuilder(builder: (context, orientation){
//return GridView.count(
//crossAxisCount: orientation==Orientation.portrait?2:3,
//crossAxisSpacing: 2.0,
//children: List.generate(7, (index){
//return  Image.asset(
//'assets/banner$index.jpg',
//width: 200.0,
//height: 200.0,
//);
//
//}),
//);
//}),
//],
//),