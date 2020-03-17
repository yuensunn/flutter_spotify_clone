import 'package:flutter/material.dart';

class AlbumAvatar extends StatelessWidget {
  final double size;
  final String image;
  final String label;
  const AlbumAvatar(
      {Key key,
      this.image = "https://source.unsplash.com/random",
      this.label = "",
      this.size = 36})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.grey,
          child: Image(
            width: size,
            height: size,
            fit: BoxFit.cover,
            image: NetworkImage(image),
          ),
        ),
        SizedBox(height: 10),
        Text(label)
      ],
    );
  }
}
