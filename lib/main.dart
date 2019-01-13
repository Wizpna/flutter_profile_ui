import 'package:flutter/material.dart';
import 'package:flutter_profile_ui/myhomepage.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Profile Screen',
    theme: ThemeData(primaryColor: Colors.orangeAccent),
    home: MyHomePage(),
  ));
}
