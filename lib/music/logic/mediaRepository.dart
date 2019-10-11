import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:rate_it/music/state/model.dart';

class MediaRepository {
  Future<List<MediaItem>> fetch() async {
    var mediaJson = await rootBundle.loadString("assets/media.json");
    Map jsonData = json.decode(mediaJson);

    var index = 0;
    var results = (jsonData["media"] as List)
    .map((item) => MediaItem(
        id: index++,
        artist: item["artist"],
        album: item["album"],
        category: item["category"])
    );

    return results.toList();
  }
}