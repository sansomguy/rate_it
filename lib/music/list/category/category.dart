import 'package:flutter/widgets.dart';
import 'package:rate_it/music/list/thumbnail/thumbnail.dart';

class Category extends StatelessWidget {

  final int index;

  Category(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        padding: EdgeInsets.all(0),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            padding: EdgeInsets.all(0),
            itemBuilder: (BuildContext context, int index){
              return Thumbnail(this.index + index);
            }
        )
    );
  }

}