import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  final String labelName;
  final bool obscureText;
  final dynamic onChange, validator;
  const CommonTextField({
    Key? key,
    required this.labelName,
    required this.onChange,
    required this.validator,
    required this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        label: Text(labelName),
        border: InputBorder.none
      ),
      onChanged: onChange,
      validator: validator,
    );
  }
}
