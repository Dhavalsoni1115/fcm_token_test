import 'package:flutter/material.dart';

import '../../../constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 180,
            width: double.infinity,
            // color: backgroundColor,
            child: Image(
              image: AssetImage('assets/images/Spash.png'),
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
