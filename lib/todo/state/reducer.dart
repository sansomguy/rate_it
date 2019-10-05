import 'actions.dart';
import 'model.dart';

class TodoListState {
  List<TodoItem> todoList;
  TodoItem selectedItem;

  TodoListState({this.todoList});
}

Function lookupById(int id) => (TodoItem item) => item.id == id;

TodoListState todoListReducer(TodoListState state, dynamic action) {
  if(action is CompleteTodoListItemAction) {
    var item = state.todoList.firstWhere(lookupById(action.todoItemId));
    item.completed = true;
  }

  if(action is SelectTodoItemAction) {
    state.selectedItem = action.item;
  }
  return state;
}