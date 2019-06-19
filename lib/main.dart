import 'package:flutter/material.dart';
import './products.dart';
import './products_manager.dart';
main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  List<String> _products = ['Food Tester'];

  void updateProducts(List<String> newProducts){
    _products = newProducts;
  }


  build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: ("Edit")),
                Tab(text: ("ADD")),
              ],

            ),
            title: Text('first app'),
          ),
          body: TabBarView(
            children: [
              Container(child: Products(_products),),
              ProductsManager('food tester', updateProducts),
            ],


          ),
        ),
      ),
    );
  }
}
