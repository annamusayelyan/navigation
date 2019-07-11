import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProductCreatePageState();
  }
}

class ProductCreatePageState extends State<ProductCreatePage> {
  String titleValue;
  String descriptionValue;
  double priceValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: ListView(
        children: <Widget>[
          TextField(
            onChanged: (String value) {
              setState(() {
                titleValue = value;
              });
            },
            decoration: InputDecoration(
              labelText: 'product title',
            ),
          ),
          TextField(
            onChanged: (String value) {
              setState(() {
                descriptionValue = value;
              });
            },
            decoration: InputDecoration(
              labelText: 'product description',
            ),
          ),
          TextField(
            keyboardType: TextInputType.number,
            onChanged: (String value) {
              setState(() {
                priceValue = double.parse(value);
              });
            },
            decoration: InputDecoration(
              labelText: 'product price',
            ),
          )
        ],
      ),
    );
  }
}
