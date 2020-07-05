import 'package:flutter/material.dart';
import 'package:omnigen_mobile/screens/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Omnigen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(183, 10, 16, 1.0),
        iconTheme: IconThemeData(color: Colors.white),
        appBarTheme: AppBarTheme(
          color: Color.fromRGBO(183, 10, 16, 1.0),
          iconTheme: IconThemeData(
            color: Color.fromRGBO(183, 10, 16, 1.0),
          )
        )
      ),
      home: Splash(),
    );
  }
}
