import 'package:flutter/material.dart';
import 'package:flutter_app11/Starting_Screen/StartingScreen.dart';


void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  static const PrimaryColor = Color(0xFF448AFF);
  static const BackGroundColor = Color(0xFFEFEFEF);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primaryColor: PrimaryColor,
        scaffoldBackgroundColor: BackGroundColor,
      ),
      home: StartingScreen(),
    );
  }
}
