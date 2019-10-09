import 'model.dart';

String completeItemAction = '[TodoList] Complete Item';
String selectItemAction = '[TodoList] select item';

class CompleteTodoListItemAction {
  final String type = completeItemAction;
  final int todoItemId;
  CompleteTodoListItemAction(this.todoItemId);
}

class SelectTodoItemAction {
  final String type = selectItemAction;
  final TodoItem item;
  SelectTodoItemAction(this.item);
}