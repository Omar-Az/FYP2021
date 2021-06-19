import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app11/Skip_to_Home/Skip_To_Home.dart';
import 'package:flutter_app11/Starting_Screen/Components/Background.dart';
import 'package:flutter_app11/SignIn/SignIn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Background(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment(0.1, 0.40),
              child: Text(
                "Welcome to Park It Here",
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w800,
                  fontSize: 29,
                ),
              ),
            ),
            Container(
              alignment: Alignment(0.1, 0.55),
              child: Text(
                "Find the Best Possible parking location for your car",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black.withOpacity(0.3),
                  fontSize: 21,
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Align(
                      alignment: Alignment(0.1, 0.8),
                      child: ElevatedButton(
                        child: Text("   Skip    "),
                        style: ElevatedButton.styleFrom(
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(50.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Skip_To_Home(),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Container(
                    child: Align(
                      alignment: Alignment(0.1, 0.8),
                      child: ElevatedButton(
                        child: Text("   SignUp   "),
                        style: ElevatedButton.styleFrom(
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(50.0),
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Container(
                    child: Align(
                      alignment: Alignment(0.1, 0.8),
                      child: ElevatedButton(
                        child: Text("   LogIn   "),
                        style: ElevatedButton.styleFrom(
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(50),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignIn(),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
