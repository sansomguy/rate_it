import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HeaderIcon extends StatelessWidget {

  final IconData iconData;

  HeaderIcon({this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      child: InkWell(
         borderRadius: BorderRadius.circular(50),
         child: Icon(this.iconData),
         onTap: () {},
     )
    );
  }

}

