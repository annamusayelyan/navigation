import 'package:flutter/material.dart';


class ProductsControl extends StatelessWidget{
  final Function addProduct;

  ProductsControl(this.addProduct);

  @override
  Widget build (BuildContext context){
    return Container(
      child: Column(
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
            addProduct({
              'title': "chocolate",
              'imageUrl': "assets/food.jpg"
            });
            },
          ),


        ],
      ),
    );}

  }


