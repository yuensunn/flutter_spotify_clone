import 'package:flutter/material.dart';

class HorizontalSegment extends StatelessWidget {
  @required
  final String title;
  @required
  final IndexedWidgetBuilder itemBuilder;

  final double height;

  @required
  final int itemCount;
  const HorizontalSegment({
    Key key,
    this.title,
    this.itemBuilder,
    this.itemCount,
    this.height = 120,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .title
                    .copyWith(fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(height: 15),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                primary: false,
                padding: EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                itemBuilder: itemBuilder,
                separatorBuilder: (context, index) => SizedBox(width: 10),
                itemCount: itemCount,
              ),
            ),
          ],
        ));
  }
}
