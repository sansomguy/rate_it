import 'package:flutter/widgets.dart';
import 'package:rate_it/music/list/view_model.dart';

import 'category/category.dart';

class MusicListBuilder extends StatelessWidget {

  final List<MusicListCategory> categories;

  const MusicListBuilder({this.categories});

  @override
  Widget build(BuildContext context) {

    return SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
          if(index >= categories.length)
            return null;

          if(index%2 == 0) {
            return Container(
                padding: EdgeInsets.only(left: 20, top: 20, bottom: 10),
                child: Text(this.categories[index~/2].category, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
            );
          }
          return Category(index: index, mediaItems: this.categories[(index-1)~/2].items);
        }
        ),
      );
  }

}