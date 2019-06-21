import 'package:flutter/material.dart';
import 'package:icone_1/products.dart';
import './products_control.dart';


class ProductsManager extends StatefulWidget {
  final String startingProduct;

  ProductsManager(this.startingProduct);


  @override
  State<StatefulWidget> createState() {
    return _ProductsManagerState();
  }
}

class _ProductsManagerState extends State<ProductsManager> {
  List<String> _products = [];

  @override
  void initState() {

    super.initState();
    _products.add(widget.startingProduct);

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          ProductsControl(),
          Products(_products)

        ],
      ),
    );
  }

}