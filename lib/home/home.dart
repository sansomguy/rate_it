
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:rate_it/music/list/route.dart';
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
      body: MusicList(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up),
            title: Text("Trending"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            title: Text("Library"),
          )
        ],
      )
    )
  );
}
