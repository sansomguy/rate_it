import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:rate_it/state/state.dart';
import 'package:rate_it/todo/item/shared.dart';
import 'package:rate_it/todo/state/model.dart';


class TodoItemViewModel {
  final TodoItem selectedItem;
  TodoItemViewModel(this.selectedItem);
}

class TodoItemRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StoreConnector<AppState, TodoItemViewModel>(
    converter: (store) => TodoItemViewModel(store.state.todoListState.selectedItem),
      builder: (context, vm) => Scaffold(
        appBar: AppBar(title: Text('So many titles')),
        body: Center(
            child: SharedItem(title: vm.selectedItem.title, id: vm.selectedItem.id)
        ),
    )
  );
}