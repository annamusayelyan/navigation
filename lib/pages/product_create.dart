import 'package:flutter/material.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';

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
  String type;
  String expirationDate;

  final _formKey = GlobalKey<FormState>();
  DateTime date;

  final format = DateFormat("EEEE, MMMM d, yyyy");

  DropdownButton<String> _dropdown() => DropdownButton(
        hint: Text('Type'),
        items: [
          DropdownMenuItem(
            child: Text('New'),
            value: 'New',
          ),
          DropdownMenuItem(
            child: Text('Out date'),
            value: 'Out date',
          ),
        ],
        onChanged: (value) {
          setState(() {
            type = value;
          });
        },
        value: type,


      );
  Widget _buildRelationTile() {
    if ( type == "New" ) {
      return Container();
    } else {
      return DateTimePickerFormField(
          format: format,
          editable: false,
          dateOnly: true,
          decoration: InputDecoration(
              labelText: 'Date', hasFloatingPlaceholder: false),
          onChanged: (dt) {
            date = dt;
            setState(() {
              expirationDate = date.toString();
              print(type);
              print(expirationDate);

            });
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: _formKey,
      margin: EdgeInsets.all(15.0),
      child: Form(
        child: ListView(
          children: <Widget>[
            TextFormField(
              onSaved: (String value) {
                setState(() {
                  titleValue = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'product title',
              ),
            ),
            TextFormField(
              onSaved: (String value) {
                setState(() {
                  descriptionValue = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'product description',
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              onSaved: (String value) {
                setState(() {
                  priceValue = double.parse(value);
                });
              },
              decoration: InputDecoration(
                labelText: 'product price',
              ),
            ),
            _dropdown(),
            _buildRelationTile()

          ],
        ),
      ),
    );
  }
}
