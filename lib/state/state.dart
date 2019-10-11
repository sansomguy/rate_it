import 'package:rate_it/music/state/model.dart';
import 'package:rate_it/music/state/reducer.dart';

enum Actions { Increment }

int counterReducer(int state, dynamic action) {
  if (action == Actions.Increment) {
    return state + 1;
  }

  return state;
}

class AppState {
  TodoListState todoListState;
  int counterState;
  AppState(this.todoListState, this.counterState);

  AppState.initialState() {

    var list = List<TodoItem>();
    for(var i = 0; i < 100; i++)
    {
      list.add(TodoItem(id: i, title: 'This is item number: $i', completed: false));
    }

   this.todoListState = TodoListState(todoList: list);
   this.counterState = 0;
  }
}

AppState appStateReducer(AppState state, action) => new AppState(todoListReducer(state.todoListState, action), counterReducer(state.counterState, action));

