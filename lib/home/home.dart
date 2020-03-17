import 'package:flutter/material.dart';
import 'package:netflix_flutter_clone/components/components.dart';

class Home extends StatefulWidget {
  final Widget bottomNavigation;
  Home({Key key, this.bottomNavigation}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                gradient: RadialGradient(
                    radius: 0.7,
                    center: Alignment.topLeft,
                    stops: [0, 1],
                    colors: [Color(0xFF5C5539), Colors.black])),
            child: Column(children: <Widget>[
              AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                actions: <Widget>[
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.settings),
                      ),
                    ),
                  ),
                ],
              ),
              HorizontalSegment(
                title: "What the hell",
                itemCount: 20,
                height: 170,
                itemBuilder: (context, index) => AlbumAvatar(
                  size: 100,
                  label: "Chao dong",
                ),
              ),
              SizedBox(height: 50),
              HorizontalSegment(
                title: "What the hell",
                itemCount: 20,
                height: 170,
                itemBuilder: (context, index) => ArtistAvatar(
                  size: 50,
                  label: "Chao dong",
                ),
              ),
              SizedBox(height: 50),
              HorizontalSegment(
                title: "What the hell",
                itemCount: 20,
                height: 170,
                itemBuilder: (context, index) => ArtistAvatar(
                  size: 50,
                  label: "Chao dong",
                ),
              ),
              SizedBox(height: 60),
            ]),
          ),
        ),
        bottomNavigationBar: widget.bottomNavigation);
  }
}
