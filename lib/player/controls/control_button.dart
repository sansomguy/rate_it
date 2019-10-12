import 'package:flutter/cupertino.dart';

class ControlButton extends StatelessWidget{

  final Widget child;

  const ControlButton({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: this.child
    );
  }

}