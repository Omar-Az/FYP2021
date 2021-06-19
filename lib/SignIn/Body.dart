import 'package:flutter/material.dart';
class SignIn extends StatefulWidget {
  @override
  _SignIn createState() => _SignIn();
}

class _SignIn extends State<SignIn>
    with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {

    double screenWidth;


    Size size = MediaQuery
        .of(context)
        .size;
    screenWidth = size.width;

    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: Stack(
        children: <Widget>[
        ],
      ),
    );
  }
}
