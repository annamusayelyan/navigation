import 'package:flutter/material.dart';
import 'package:icone_1/pages/home.dart';
import 'package:icone_1/products_manager.dart';
import 'package:icone_1/pages/auth.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepPurple),
      home: LoginPage(),
    );
  }
}