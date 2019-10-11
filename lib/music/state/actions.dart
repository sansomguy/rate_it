import 'model.dart';

class FetchItemsAction {
}

class ErrorFetchingItemsAction {

}

class SelectItemAction {
  final MediaItem item;
  SelectItemAction(this.item);
}

class ReceivedItemsAction {
  final List<MediaItem> items;
  ReceivedItemsAction(this.items);
}