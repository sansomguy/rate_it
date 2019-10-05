import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:rate_it/state/state.dart';


class TodoItemViewModel {
  final String title;
  TodoItemViewModel(this.title);
}

class TodoItemRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StoreConnector<AppState, TodoItemViewModel>(
    converter: (store) => TodoItemViewModel(store.state.todoListState.selectedItem.title),
      builder: (context, vm) => Scaffold(
        appBar: AppBar(title: Text('So many titles')),
        body: Center(
            child: Text(vm.title)
        ),
    )
  );
}