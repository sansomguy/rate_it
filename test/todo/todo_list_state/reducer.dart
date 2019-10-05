import 'package:flutter_test/flutter_test.dart';
import 'package:rate_it/todo/state/actions.dart';
import 'package:rate_it/todo/state/model.dart';
import 'package:rate_it/todo/state/reducer.dart';

void main() {
  test('Should update state to complete the specified item to be completed', (){

    var state = todoListReducer(TodoListState(todoList: [TodoItem(id: 1, title: 'test', completed: false)].toList()), CompleteTodoListItemAction(1));

    var item = state.todoList.firstWhere((TodoItem item) => item.id == 1);

    expect(item.completed, true);

  });
}