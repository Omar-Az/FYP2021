import 'dart:ui';

import 'package:flutter/material.dart';

class WalletHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Text("Welcome To Park It Here", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
        ],
      ),

    );
  }
}
