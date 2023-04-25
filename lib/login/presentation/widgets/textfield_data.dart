import 'package:flutter/material.dart';

import '../../../constants.dart';


class TextFormFieldData extends StatelessWidget {
  final String labelText;
  final IconData prefixIcon;
  final Function(String?) onSaved;
  final dynamic validator;
  final TextEditingController controoler;
  final bool obscureText;
  dynamic suffixIcon;

  TextFormFieldData({
    required this.labelText,
    required this.prefixIcon,
    required this.onSaved,
    required this.validator,
    required this.controoler,
    this.suffixIcon,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: controoler,
        obscureText: obscureText,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(
            prefixIcon,
            color: primaryColor,
          ),
          labelText: labelText,
          suffixIcon: suffixIcon,
        ),
        onSaved: onSaved,
        validator: validator,
        //  (String? value) {
        //   return (value != null && value.contains('@'))
        //       ? 'Do not use the @ char.'
        //       : null;
        // },
      ),
    );
  }
}
