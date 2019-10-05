import 'model.dart';

String CompleteItem = '[TodoList] Complete Item';
String SelectItem = '[TodoList] select item';

class CompleteTodoListItemAction {
  final String type = CompleteItem;
  final int todoItemId;
  CompleteTodoListItemAction(this.todoItemId);
}

class SelectTodoItemAction {
  final String type = SelectItem;
  final TodoItem item;
  SelectTodoItemAction(this.item);
}