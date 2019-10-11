import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:rate_it/music/list/view_model.dart';
import 'package:rate_it/state/state.dart';
import 'package:rate_it/music/list/header/header.dart';
import 'package:rate_it/music/state/actions.dart';
import 'package:rate_it/music/state/model.dart';
import 'package:collection/collection.dart';
import 'list.dart' as MediaList;

class MusicList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, MusicListViewModel>(
      converter: (store) {

        var groups= groupBy(
            store.state.mediaListState.media,
            (MediaItem item) => item.category
        );

        var categories = groups
            .keys
            .map((key) => MusicListCategory(category: key, items: groups[key])).toList();

        return MusicListViewModel(
            categories: categories,
            selectItem: (MediaItem item) => store.dispatch(SelectItemAction(item)),
            fetchItems: () => store.dispatch(FetchItemsAction()),
            isFetching: store.state.mediaListState.isFetching
        );
      },
      builder: (BuildContext context, MusicListViewModel vm) {

        if(!vm.isFetching && (vm.categories == null || vm.categories.isEmpty)){
          vm.fetchItems();
        }
        return CustomScrollView(
          slivers: <Widget>[
            Header(),
            MediaList.MusicListBuilder(categories: vm.categories)
          ],
        );
      }
    );
  }

}