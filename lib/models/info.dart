import 'package:flutter/material.dart';

Widget info(String name, String value) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Text(
          "$name",
          style: TextStyle(
            fontFamily: "RobotoBold",
            fontSize: 20.0,
            color: const Color.fromRGBO(183, 10, 16, 1.0),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Text(
            "$value",
            style: TextStyle(
              fontFamily: "RobotoBold",
              fontSize: 50.0,
              color: const Color.fromRGBO(183, 10, 16, 1.0),
            ),
          ),
        ),
      ],
    ),
  );
}
