import 'package:flutter/material.dart';
import 'package:gplayer/gplayer.dart';
import 'package:screen/screen.dart';
class TvPlayer extends StatefulWidget {
//  final player_name;
//  final player_pic;
//  TvPlayer({
//    this.player_name,
//    this.player_pic,
//});
  @override
  _TvPlayerState createState() => _TvPlayerState();
}

class _TvPlayerState extends State<TvPlayer> {
  GPlayer player;
  @override
  void initState() {
    super.initState();
    //1.create & init player
    Screen.keepOn(true);
    player = GPlayer(uri: 'rtmp://124.41.243.254:1935/live/osn')
      ..init()
      ..addListener((_) {
        //update control button out of player
        setState(() {});
      });
    setState(() {
      player.start();
    });
  }
  @override
  void dispose() {
    player?.dispose(); //2.release player
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: player.display,

    );
  }
}
