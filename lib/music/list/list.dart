import 'package:flutter/widgets.dart';

import 'category/category.dart';

class List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
          if(index%2 == 0) {
            return Container(
                padding: EdgeInsets.only(left: 20, top: 20, bottom: 10),
                child: Text("Category", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
            );
          }
          return Category(index);
        }
        ),
      );
  }

}