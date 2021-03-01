import 'package:flutter/material.dart';
import 'package:flutter_paypal_redesign_clone/utils/constants.dart';

class CustomField extends StatefulWidget {

  final String hintText;
  final IconData iconData;
  final String label;
  bool autoValidate = false;
  final TextEditingController controller;
  final Function validator;
  final TextInputType keyboardType;


  CustomField({@required this.hintText, @required this.iconData, this.label,
    this.controller,this.autoValidate,this.validator,this.keyboardType});

  @override
  _CustomFieldState createState() => _CustomFieldState();
}

class _CustomFieldState extends State<CustomField> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      child: TextFormField(
        controller: widget.controller,
        validator: widget.validator,
        keyboardType: widget.keyboardType != null
            ? widget.keyboardType
            : TextInputType.text,
        autovalidate: widget.autoValidate,
        style: TextStyle(
          fontSize: 14,
          color: kGreyColor,
          fontWeight: FontWeight.bold,
        ),
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyle(
            fontSize: 14,
            color: kGreyColor,
            fontWeight: FontWeight.bold,
          ),
          labelText: widget.label,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kPrimaryColor,
              width: 2,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kPrimaryColor,
              width: 2,
            ),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kPrimaryColor,
              width: 2,
            ),
          ),
          prefixIcon: Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              widget.iconData,
              color: kPrimaryColor,
            ),
          ),
        ),
      ),
    );
  }
}