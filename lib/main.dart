import 'package:flutter/material.dart';
import 'drawer.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(primarySwatch: Colors.deepPurple),
      home: new MyDrawer(),
      
    );
  }
}
