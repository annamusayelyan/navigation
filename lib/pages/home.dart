import 'package:flutter/material.dart';
import 'package:icone_1/products_manager.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
    Scaffold(
        appBar: AppBar(
          title: Text('first app'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: ProductsManager ());
  }
}
