import 'package:flutter/material.dart';
import 'package:omnigen_mobile/screens/logout.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((_) {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => Logout()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromRGBO(183, 10, 16, 1.0),
        child: Center(
          child: Container(
            width: 220.0,
            height: 220.0,
            child: Image.asset(
              "images/icon_splash.png",
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
