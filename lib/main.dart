import 'package:flutter/material.dart';
import 'hindiPage.dart';
import 'tvPlayer.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MainCollapsingToolbar(),
    );
  }
}
class MainCollapsingToolbar extends StatefulWidget {
  @override
  _MainCollapsingToolbarState createState() => _MainCollapsingToolbarState();
}

class _MainCollapsingToolbarState extends State<MainCollapsingToolbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {

            return <Widget>[


              SliverAppBar(
                expandedHeight: 250.0,
                floating: false,
                pinned: true,
                title: new Text('Some Title',style: TextStyle(color: Colors.white,fontSize: 18.0,),),

                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
//                    title: Text("Your Sliver Title",),
                  background: Image(image: AssetImage('assets/banner.jpg',),fit: BoxFit.fitWidth,),
                ),
              ),
              Container(
                child: SliverPersistentHeader(
                  delegate: _SliverAppBarDelegate(
                    TabBar(
                      labelColor: Colors.black87,
                      unselectedLabelColor: Colors.grey,
                      tabs: [
                        Tab(text: "Nepali"),
                        Tab(text: "Hindi"),
                      ],
                    ),
                  ),
                  pinned: true,
                ),
              )



            ];
          },
          body: Container(
            color: Colors.black12,
            child: TabBarView(
              children: <Widget>[
                PageOne(),
                HindiPage(),
              ],

            ),
          )


        ),
      ),
      drawer: Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('Unkown'),
              accountEmail: Text('Unkown@demo.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person,
                      size: 30,
                      color: Colors.blue
                  ),
                ),
              ),

//              image: DecorationImage(image: AssetImage('assets/banner3.jpg'),fit: BoxFit.fitWidth),
              decoration: BoxDecoration(
                color: Colors.red,
//                image: DecorationImage(image: AssetImage('assets/banner3.jpg',),fit: BoxFit.fitWidth),
                gradient: LinearGradient(colors: [const Color(0x0000000), const Color(0xD9333333)],
                stops: [0.0,0.9], begin: FractionalOffset(0.0, 0.0), end: FractionalOffset(0.0, 1.0))
              ),
            ),
            InkWell(
              child: ListTile(title: Text('Profile'),leading: Icon(Icons.person,color: Colors.grey,)),
            ),
            InkWell(
              child: ListTile(title: Text('Setting'),leading: Icon(Icons.settings,color: Colors.grey,)),
            ),
            Divider(),
            InkWell(
              child: ListTile(title: Text('Rate'),leading: Icon(Icons.favorite,color: Colors.red,)),
            )
          ],
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}


class PageOne extends StatelessWidget {
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
          children: List.generate(12, (index) {
            return InkWell(
              child: Image.asset(
                'assets/favourite/logo$index.png',
                fit: BoxFit.fitWidth,
              ),
                onTap: (){ Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new TvPlayer()));}
            );
          }),
        );

      }),
    );
  }
}
//class PageTwo extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return ListView.builder(
//      itemExtent: 250.0,
//      itemBuilder: (context, index) => Container(
//        padding: EdgeInsets.all(10.0),
//        child: Material(
//          elevation: 4.0,
//          borderRadius: BorderRadius.circular(5.0),
//          color: index % 2 == 0 ? Colors.cyan : Colors.deepOrange,
//          child: Center(
//            child: Text(index.toString()),
//          ),
//        ),
//      ),
//    );
//  }
//}