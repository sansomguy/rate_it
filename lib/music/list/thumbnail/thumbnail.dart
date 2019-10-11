import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Thumbnail extends StatelessWidget {

  final int index;

  Thumbnail(this.index);

  @override
  Widget build(BuildContext context) {
    var colors = [Colors.red, Colors.deepOrange, Colors.blueGrey, Colors.tealAccent, Colors.teal];
    return InkWell(
      onTap: () {},
      child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.only(bottom: 10),
                  height: 150,
                  width: 150,
                  color: colors[(new Random(this.index)).nextInt(colors.length)],
                  child: Image.network("https://i.shgcdn.com/5a09e375-c554-4c76-aae2-2eeb08ccfbb1/-/format/auto/-/preview/3000x3000/-/quality/lighter/"),
                ),
                Text("Title", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("Subtitle")
              ]
          )
      ),
    );
  }

}