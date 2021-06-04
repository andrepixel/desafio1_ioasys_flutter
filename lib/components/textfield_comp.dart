import 'package:flutter/material.dart';

class CustomTextFieldCoin extends StatelessWidget {
  TextEditingController controller;
  String labelText;
  String prefixText;
  late Function() onChanged;

  CustomTextFieldCoin(this.labelText, this.prefixText, this.controller,
      {required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 17.5,
        horizontal: 38,
      ),
      child: TextField(
        keyboardType: TextInputType.number,
        controller: controller,
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
          labelText: '$labelText',
          prefix: Text('$prefixText'),
          labelStyle: TextStyle(
            color: Theme.of(context).primaryColor,
            fontFamily: 'Poppins',
          ),
          focusColor: Theme.of(context).accentColor,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onChanged: (v) {
          this.onChanged();
        },
      ),
    );
  }
}
