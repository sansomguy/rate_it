import 'package:rate_it/todo_list_state/actions.dart';

class TodoListState {
  List<TodoItem> todoList;

  TodoListState({this.todoList});
}


class TodoItem {
  final int id;
  String title;
  bool completed;

  TodoItem({this.id, this.title, this.completed});
}


Function lookupById(TodoListAction action) => (TodoItem item) => item.id == action.todoItemId;

TodoListState todoListReducer(TodoListState state, dynamic action) {
  if(action is CompleteTodoListItemAction) {
    var item = state.todoList.firstWhere(lookupById(action));
    if(item == null) {
      throw Exception(['Could find item to complete: ${action.todoItemId}']);
    }

    state.todoList.removeWhere(lookupById(action));
    item.completed = true;

    state.todoList.add(item);
  }

  return state;
}