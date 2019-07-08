import 'package:flutter/material.dart';
import 'package:icone_1/pages/element1.dart';
import 'package:icone_1/pages/element2.dart';


class ProductAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
            ]
          )
            ),
          body: TabBarView(
            children: [
              ProductEdit(),
              ProductList(),
            ],
          ),
        ),
      );

  }
}