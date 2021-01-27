import 'package:cricket_player/my_home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cricket Player',
      home: MyHomePage(title: 'Players'),
      debugShowCheckedModeBanner: false,
    );
  }
}
