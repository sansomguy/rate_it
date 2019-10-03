import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:rate_it/state/state.dart';
import 'package:rate_it/todo_list_state/actions.dart';
import 'package:rate_it/todo_list_state/reducer.dart';

class TodoListViewModel {
  final List<TodoItem> items;
  final Function complete;
  TodoListViewModel({this.items, this.complete});
}

class TodoListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, TodoListViewModel>(
      converter: (store) {
        return TodoListViewModel(items: store.state.todoListState.todoList, complete: (int itemId) => store.dispatch(CompleteTodoListItemAction(itemId)));
      },
      builder: (BuildContext context, TodoListViewModel vm) {
        return ListView.builder(
          itemBuilder: (BuildContext context, int index){

            if(vm.items.length <= index){
              return null;
            }
            return Container(
                height: 50,
                child: Text(vm.items[index].title)
            );
          },
        );
      },

    );
  }

}