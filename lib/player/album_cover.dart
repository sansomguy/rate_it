import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rate_it/music/state/model.dart';

class AlbumCover extends StatelessWidget {

  final MediaItem mediaItem;
  const AlbumCover({this.mediaItem});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Image.network(this.mediaItem.album)
    );
  }
}