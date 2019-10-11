
import 'package:rate_it/music/state/model.dart';

class MusicListCategory {
  final String category;
  final List<MediaItem> items;
  MusicListCategory({this.category, this.items});
}

class MusicListViewModel {
  final List<MusicListCategory> categories;
  final Function selectItem;
  final Function fetchItems;
  final bool isFetching;
  MusicListViewModel({this.categories, this.selectItem, this.fetchItems, this.isFetching});
}