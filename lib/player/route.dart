import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:rate_it/music/state/model.dart';
import 'package:rate_it/player/album_cover.dart';
import 'package:rate_it/player/album_info.dart';
import 'package:rate_it/player/controls/music_controls.dart';
import 'package:rate_it/state/state.dart';

class PlayerRoute extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoreConnector<AppState, MediaItem>(
        converter: (store) => store.state.mediaListState.selectedItem,
        builder: (context, item) => Column(
          children: <Widget>[
            Flexible(
                fit: FlexFit.tight,
                flex: 5,
                child: AlbumCover(mediaItem: item)
            ),
            Flexible(
                fit: FlexFit.tight,
                flex: 1,
                child: AlbumInfo(item: item)
            ),
            Flexible(
                fit: FlexFit.tight,
                flex: 2,
                child: MusicControls()
            )
          ],
        ),
      )
    );
  }
}