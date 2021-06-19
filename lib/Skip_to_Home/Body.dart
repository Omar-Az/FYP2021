import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


/*class Body extends StatelessWidget {
  @override


    Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return ()
    Container(
      child: AppBar(

            leading: Icon(Icons.menu),
            title: Text('Page title'),
            actions: [
              Icon(Icons.favorite),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Icon(Icons.search),
              ),
              Icon(Icons.more_vert),
            ],
            backgroundColor: Colors.purple,
      ),
    );
  }
}
*/
class MenuDashboardPage extends StatefulWidget {
  @override
  _MenuDashboardPageState createState() => _MenuDashboardPageState();
}

class _MenuDashboardPageState extends State<MenuDashboardPage>
    with SingleTickerProviderStateMixin {
  bool isCollapsed = true;
  double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 300);


  dispose();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          dashboard(context),
          menu(context),
        ],
      ),
    );
  }

  Widget menu(BuildContext context) {
    return Scaffold(
      drawerScrimColor: Color.fromRGBO(0, 0, 0, 245),
      appBar: AppBar(title: Text('title')),
      drawer: Container(
        width: 190,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
          child: Drawer(
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                Container(
                  height: 230.0,
                  margin: EdgeInsets.all(0.0),
                  padding: EdgeInsets.all(0.0),
                  child: DrawerHeader(
                    child: Container(
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top: 120,
                            left: 10,
                            child: SizedBox(
                              width: 235,
                              child: Text(
                                'Hello there,\n Welcome ',
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20,
                                  color: Colors.blue,
                                  shadows: <Shadow>[
                                    Shadow(
                                      offset: Offset(0.0, 3.0),
                                      blurRadius: 4.0,
                                      color: Color.fromARGB(50, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: -20,
                            left: -40,
                            child: Image.asset(
                              "assets/Icons/Dashboard/Profile_Image.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ListTile(

                  title: Text('Item 2'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                Divider(
                  thickness: 2,
                ),
                ListTile(
                    leading: Icon(Icons.phone_android),
                  title: Text("SignUp",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 21,),
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget dashboard(context) {
    return Scaffold(
      body: Center(child: Text('My Page!')),
    );
  }
}
