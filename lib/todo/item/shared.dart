import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:rate_it/state/state.dart';


class SharedItemViewModel {
  final String title;

  SharedItemViewModel(this.title);
}

class SharedItem extends StatelessWidget {

  final String title;
  final int id;

  SharedItem({this.title, this.id});

  @override
  Widget build(BuildContext context) => new StoreConnector<AppState, SharedItemViewModel>(
    converter: (store) {
      return SharedItemViewModel(this.title);
    },
    builder: (context, vm) {
      return Hero(
        tag: this.id,
        child: Material(
            child: Text(vm.title)
          )
        );
    }
  );

}