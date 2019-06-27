import 'package:flutter/material.dart';

class ProductPage  extends StatelessWidget{
  final String title;
  final String imageUrl;
   ProductPage(this.title,this.imageUrl);

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
      ),
      body:Column(children: <Widget>[
        Image.asset(imageUrl),
        Text(title),
       RaisedButton(
           child:Text('Back'),
          onPressed:(){
          Navigator.pop(context);
    }
    )],));
  }
}