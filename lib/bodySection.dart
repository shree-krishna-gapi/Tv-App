import 'package:flutter/material.dart';
class bodySection extends StatefulWidget {
  @override
  _bodySectionState createState() => _bodySectionState();
}

class _bodySectionState extends State<bodySection> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new CustomScrollView(
        slivers: <Widget>[

              new SliverAppBar(
              title: new Text('Some Title',style: TextStyle(color: Colors.white,fontSize: 18.0,),),backgroundColor: Colors.black54,elevation: 14.0,
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: () {},padding: EdgeInsets.only(right: 30.0),
                ),
              ],
              expandedHeight: 250.0,
              floating: false,
              pinned: true,
              snap: false,
              flexibleSpace: new FlexibleSpaceBar(
                background: Image(image: AssetImage('assets/banner1.jpg',),fit: BoxFit.fitWidth,),
              ),
              bottom: TabBar(
                tabs: [
                  Tab(text: ('Nepali'),),
                  Tab(text: ('Hindi'),),
                ]
              ),
            ), //Sliver AppBar



        ] // Sliver Widget
      )//Custom Scroll Bar
    ); //container
  }
}



