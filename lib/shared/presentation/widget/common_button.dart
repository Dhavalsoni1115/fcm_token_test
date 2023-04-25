import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class CommonButton extends StatelessWidget {
  final VoidCallback onPresse;
  final String buttonName;
  const CommonButton({
    Key? key,
    required this.buttonName,
    required this.onPresse,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: primaryColor,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
      onPressed: onPresse,
      child: Text(
        buttonName,
        style: const TextStyle(color: Colors.white, fontSize: 15),
      ),
    );
  }
}
