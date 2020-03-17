import 'package:flutter/material.dart';
import 'package:netflix_flutter_clone/tab_navigation.dart';
import './components/components.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
        fontFamily: 'Roboto',
        textTheme: TextTheme(
          headline: TextStyle(fontWeight: FontWeight.w800),
        ),
      ),
      home: TabNavigation(),
    );
  }
}
