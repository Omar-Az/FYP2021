import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(

        alignment: Alignment.center,
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: <Widget>[

            Positioned(


              top: 130,
              left: -15,

              child: Image.asset(
                "assets/main.png",
                fit: BoxFit.fill,
              ),
            ),
            child,
          ],
        ));
  }
}
