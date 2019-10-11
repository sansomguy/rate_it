import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:rate_it/state/state.dart';
import 'package:rate_it/music/list/header/header.dart';
import 'package:rate_it/music/state/actions.dart';
import 'package:rate_it/music/state/model.dart';
import 'list.dart' as MediaList;

class TodoListViewModel {
  final List<TodoItem> items;
  final Function complete;
  final Function selectItem;
  TodoListViewModel({this.items, this.complete, this.selectItem});
}

class MusicList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, TodoListViewModel>(
      converter: (store) {
        return TodoListViewModel(
            items: store.state.todoListState.todoList,
            complete: (int itemId) => store.dispatch(CompleteTodoListItemAction(itemId)),
            selectItem: (TodoItem item) => store.dispatch(SelectTodoItemAction(item))

        );
      },
      builder: (BuildContext context, TodoListViewModel vm) {
        return CustomScrollView(
          slivers: <Widget>[
            Header(),
            MediaList.List()
          ],
        );
      }
    );
  }

}