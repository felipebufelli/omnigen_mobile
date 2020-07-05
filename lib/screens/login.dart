import 'package:flutter/material.dart';
import 'package:omnigen_mobile/screens/home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                "Entrar",
                style: TextStyle(
                  fontFamily: "ComfortaaRegular",
                  fontSize: 36,
                  color: Color.fromRGBO(183, 10, 16, 1.0),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(15.0, 50.0, 30.0, 15.0),
              width: 325.0,
              height: 60.0,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(183, 10, 16, 1.0),
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: TextField(
                  cursorColor: Colors.white,
                  textAlignVertical: TextAlignVertical.bottom,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "E-mail",
                    labelStyle: TextStyle(
                      fontFamily: "RobotoBlack",
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(15.0, 0.0, 30.0, 15.0),
              width: 325.0,
              height: 60.0,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(183, 10, 16, 1.0),
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: TextField(
                  cursorColor: Colors.white,
                  textAlignVertical: TextAlignVertical.bottom,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "Senha",
                    labelStyle: TextStyle(
                      fontFamily: "RobotoBlack",
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            ),
            FlatButton(
              padding: EdgeInsets.fromLTRB(15.0, 250.0, 15.0, 0.0),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Home()));
              },
              child: Container(
                width: 325.0,
                height: 52.0,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(183, 10, 16, 1.0),
                  borderRadius: BorderRadius.circular(5),
                ),
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
          ],
        ),
      ),
    );
  }
}
