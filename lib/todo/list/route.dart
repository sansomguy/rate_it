import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:rate_it/state/state.dart';
import 'package:rate_it/todo/item/route.dart';
import 'package:rate_it/todo/item/shared.dart';
import 'package:rate_it/todo/state/actions.dart';
import 'package:rate_it/todo/state/model.dart';

class TodoListViewModel {
  final List<TodoItem> items;
  final Function complete;
  final Function selectItem;
  TodoListViewModel({this.items, this.complete, this.selectItem});
}

class TodoListRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, TodoListViewModel>(
      converter: (store) {
        return TodoListViewModel(
            items: store.state.todoListState.todoList,
            complete: (int itemId) => store.dispatch(CompleteTodoListItemAction(itemId)),
            selectItem: (TodoItem item) => store.dispatch(SelectTodoItemAction(item))

        );
      },
      builder: (BuildContext context, TodoListViewModel vm) {
        return ListView.separated(
          itemCount: vm.items.length,
          padding: EdgeInsets.all(0),
          itemBuilder: (BuildContext context, int index){

            if(vm.items.length <= index){
              return null;
            }

            var item = vm.items[index];
            return InkWell(
              onTap: () {
                vm.selectItem(item);
                Navigator.push(context, MaterialPageRoute(builder:(context) => TodoItemRoute()));
              },
              child: Container(
                  height: 50,
                  child: Center(child: SharedItem(title: item.title, id: item.id))
              ),
            );
          },
          separatorBuilder: (context, index) => Divider( color: Colors.black38)
        );
      },

    );
  }

}