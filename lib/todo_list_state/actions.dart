String CompleteItem = '[TodoList] Complete Item';

abstract class TodoListAction {
  final int todoItemId;

  TodoListAction(this.todoItemId);
}

class CompleteTodoListItemAction extends TodoListAction{
  final String type = CompleteItem;
  CompleteTodoListItemAction(int todoItemId): super(todoItemId);
}