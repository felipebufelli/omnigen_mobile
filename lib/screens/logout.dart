import 'package:flutter/material.dart';
import 'package:omnigen_mobile/screens/login.dart';
import 'package:omnigen_mobile/screens/register.dart';

class Logout extends StatefulWidget {
  @override
  _LogoutState createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromRGBO(183, 10, 16, 1.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                    width: 269.0,
                    height: 269.0,
                    margin: EdgeInsets.fromLTRB(0.0, 19.0, 0.0, 20.0),
                    child: Image.asset("images/logo_logout.png",
                        fit: BoxFit.contain)),
                Text(
                  "OMNIGEN",
                  style: TextStyle(
                      fontFamily: "MontserratExtraBold",
                      fontSize: 40.0,
                      color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.only(top: 165.0),
                  color: Colors.white,
                  width: 360.0,
                  height: 116.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Login()
                              )
                          );
                        },
                        child: Container(
                          width: 140.0,
                          height: 52.0,
                          color: Color.fromRGBO(183, 10, 16, 1.0),
                          child: Center(
                              child: Text(
                            "ENTRAR",
                            style: TextStyle(
                                fontFamily: "RobotoBlack",
                                color: Colors.white,
                                fontSize: 13.0),
                          )),
                        ),
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Register()
                              )
                          );
                        },
                        child: Container(
                          width: 140.0,
                          height: 52.0,
                          color: Color.fromRGBO(183, 10, 16, 1.0),
                          child: Center(
                            child: Container(
                              width: 136.0,
                              height: 48.0,
                              color: Colors.white,
                              child: Center(
                                  child: Text(
                                "CADASTRAR",
                                style: TextStyle(
                                    fontFamily: "RobotoBlack",
                                    color: Color.fromRGBO(183, 10, 16, 1.0),
                                    fontSize: 13.0),
                              )),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
