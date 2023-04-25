import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final VoidCallback onPress;
  final String buttonName;
  Color buttonColor;
  LoginButton({
    required this.onPress,
    required this.buttonName,
    required this.buttonColor,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: buttonColor,
      onPressed: onPress,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        buttonName,
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
