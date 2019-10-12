import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rate_it/music/state/model.dart';

class AlbumInfo extends StatelessWidget {

  final MediaItem item;

  const AlbumInfo({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(this.item.artist, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        Text("Subtitle")
      ],
    );
  }

}