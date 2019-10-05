
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:rate_it/todo/list/todo_list_view.dart';
import '../state/state.dart' as state;

class MyHomePageViewModel {
  final int counter;
  final Function increment;
  MyHomePageViewModel({this.counter, this.increment});
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StoreConnector<state.AppState, MyHomePageViewModel>(
    converter: (store) => MyHomePageViewModel(counter: store.state.counterState, increment: () => store.dispatch(state.Actions.Increment)),
    builder: (BuildContext context, MyHomePageViewModel vm) => Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('HomePage'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: TodoListView()
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: vm.increment,
        tooltip: 'Increment',
        child: Text('${vm.counter}'),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    )
  );
}
