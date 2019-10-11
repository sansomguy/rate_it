import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rate_it/music/state/model.dart';

class Thumbnail extends StatelessWidget {

  final int index;
  final MediaItem mediaItem;

  Thumbnail({this.index, this.mediaItem});

  @override
  Widget build(BuildContext context) {
    var colors = [Colors.red, Colors.deepOrange, Colors.blueGrey, Colors.tealAccent, Colors.teal];
    return InkWell(
      onTap: () {},
      child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.only(bottom: 10),
                  height: 150,
                  width: 150,
                  color: colors[(new Random(this.index)).nextInt(colors.length)],
                  child: Image.network(this.mediaItem.album),
                ),
                Text(this.mediaItem.artist, style: TextStyle(fontWeight: FontWeight.bold)),
                Text("Subtitle")
              ]
          )
      ),
    );
  }

}