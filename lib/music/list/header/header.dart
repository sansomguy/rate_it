import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rate_it/music/list/header/action.dart';
import 'package:rate_it/music/list/header/profile.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text("Sliver"),
      actions: [
        HeaderIcon(iconData: Icons.cast),
        HeaderIcon(iconData: Icons.search),
        ProfileAvatar()
      ],
      expandedHeight: 50,
      floating: true,
    );
  }

}