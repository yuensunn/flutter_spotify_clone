import 'package:flutter/material.dart';
import 'package:netflix_flutter_clone/components/components.dart';

class TabNavigation extends StatefulWidget {
  TabNavigation({Key key}) : super(key: key);

  @override
  _TabNavigationState createState() => _TabNavigationState();
}

class _TabNavigationState extends State<TabNavigation> {
  int _index = 0;

  final List<Map<String, dynamic>> data = [
    {
      "icon": Icons.home,
      "label": "Home",
    },
    {
      "icon": Icons.search,
      "label": "Search",
    },
    {
      "icon": Icons.library_music,
      "label": "Libary",
    }
  ];

  Widget _buildBottomNavigation() {
    return BottomNavigationBar(
      currentIndex: _index,
        backgroundColor: Color(0xFF222126),
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        items: data
            .map(
              (x) => BottomNavigationBarItem(
                backgroundColor: Color(0xFF222126),
                activeIcon: Icon(
                  x["icon"],
                  size: 25,
                  color: Colors.white,
                ),
                icon: Icon(
                  x["icon"],
                  size: 25,
                  color: Color(0xFFAEADB2),
                ),
                title: Text(
                  x["label"],
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 11,
                      fontWeight: FontWeight.w500),
                ),
              ),
            )
            .toList());
  }

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
        index: _index,
        sizing: StackFit.expand,
        children: <Widget>[
          Home(bottomNavigation: _buildBottomNavigation()),
          Home(bottomNavigation: _buildBottomNavigation()),
          Home(bottomNavigation: _buildBottomNavigation())
        ]);
  }
}
