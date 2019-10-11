
import 'actions.dart';
import 'model.dart';

class MediaListState {
  final List<MediaItem> media;
  final bool isFetching;
  final MediaItem selectedItem;

  MediaListState({this.media, this.selectedItem, this.isFetching});
  MediaListState.clone(MediaListState state,
  {
    List<MediaItem> media,
    bool isFetching,
    MediaItem selectedItem
  }) : this(
      media: media ?? state.media,
      selectedItem: selectedItem ?? state.selectedItem,
      isFetching: isFetching ?? state.isFetching
  );
}

Function lookupById(int id) => (MediaItem item) => item.id == id;

MediaListState mediaListReducer(MediaListState state, dynamic action) {

  if(action is FetchItemsAction) {
    return MediaListState.clone(state, isFetching: true);
  }

  if(action is ReceivedItemsAction) {
    return MediaListState.clone(state, media: action.items, isFetching: false);
  }

  if(action is SelectItemAction) {
    return MediaListState.clone(state, selectedItem: action.item);
  }

  return state;
}