import 'package:flutter/widgets.dart';
import 'package:rate_it/music/list/thumbnail/thumbnail.dart';
import 'package:rate_it/music/state/model.dart';

class Category extends StatelessWidget {

  final int index;
  final List<MediaItem> mediaItems;

  Category({this.index, this.mediaItems});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        padding: EdgeInsets.all(0),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: mediaItems.length,
            padding: EdgeInsets.all(0),
            itemBuilder: (BuildContext context, int index){
              return Thumbnail(index: this.index, mediaItem: this.mediaItems[index]);
            }
        )
    );
  }

}