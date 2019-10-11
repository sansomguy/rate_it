import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Container(
         child: Center(
           child: CircleAvatar(
             radius: 15,
             backgroundImage: NetworkImage("https://yt3.ggpht.com/-Ed_jM9E4d_M/AAAAAAAAAAI/AAAAAAAAAAA/sNYs2ZZeLGU/s108-c-k-no-mo-rj-c0xffffff/photo.jpg"),
           )
         )
      );
  }
}