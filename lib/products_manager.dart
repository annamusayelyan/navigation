import 'package:flutter/material.dart';

import './products.dart';

class ProductsManager extends StatefulWidget {
  final String startingProduct;
  final Function updateProducts;

  ProductsManager(this.startingProduct, [this.updateProducts]);

  @override
  State<StatefulWidget> createState() {
    return _ProductsManagerState();
  }
}
TextField(
obscureText: true,
decoration: InputDecoration(
border: OutlineInputBorder(),

),
)
class _ProductsManagerState extends State<ProductsManager> {
  List<String> _products = [];

  @override
  void initState() {

    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text(
            'Press',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          color: Colors.red,
          onPressed: () {
            setState(() {
              _products.add('Advanced food tester');
              widget.updateProducts(_products);
              print(_products);
            });
          },
        ),


      ],
    );
  }

}