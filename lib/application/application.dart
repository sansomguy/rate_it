import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:flutter/material.dart';
import 'package:rate_it/state/state.dart';
import '../home/home.dart';



class FlutterReduxApp extends StatelessWidget {
  static final store = new Store<AppState>(appStateReducer, initialState: AppState.initialState());
  FlutterReduxApp({Key key}): super(key: key);
  @override
  Widget build(BuildContext context) => new StoreProvider(store: store, child: MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: Colors.red[700],
        accentColor: Colors.redAccent,
        brightness: Brightness.dark
      ),
      home: MyHomePage(),
    );
  }
}
