import 'package:flutter/material.dart';

class ArtistAvatar extends StatelessWidget {
  final double size;
  final String image;
  final String label;
  const ArtistAvatar(
      {Key key,
      this.image = "https://source.unsplash.com/random",
      this.label = "",
      this.size = 18})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      CircleAvatar(
        radius: size,
        backgroundColor: Colors.grey,
        backgroundImage: NetworkImage(this.image),
      ),
      SizedBox(height: 10),
      Text(this.label)
    ]);
  }
}
