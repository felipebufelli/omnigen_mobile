import 'package:flutter/material.dart';
import 'package:omnigen_mobile/screens/logout.dart';
import 'package:omnigen_mobile/screens/myStore.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          elevation: 0.0,
          onPressed: () {},
          backgroundColor: Color.fromRGBO(183, 10, 16, 1.0),
          child: Icon(Icons.add)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                height: 200.0,
                width: 360.0,
                color: Color.fromRGBO(183, 10, 16, 1.0),
                child: Align(
                  alignment: Alignment(0,-0.6),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          "Olá, Mundo Verde",
                          style: TextStyle(
                            fontSize: 25.0,
                            fontFamily: "ComfortaaBold",
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () async {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => Logout()));
                        },
                        icon: const Icon(Icons.exit_to_app),
                        iconSize: 35,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 100.0,
                left: 104.0,
                child: GestureDetector(
                  child: Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("images/perfil.jpg"),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(
                        color: const Color.fromRGBO(183, 10, 16, 1.0),
                        width: 5.0,
                      ),
                    ),
                  ),
                  onTap: () {},
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top:75.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: <Widget>[
                  channel(context, "Minha loja", 0),
                  channel(context, "Cielo", 1),
                  channel(context, "GetNet", 2),
                  channel(context, "Magalu", 3),
                  channel(context, "Mercado Livre", 4),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget channel(BuildContext context, String typeChannel, int id) {
  return FlatButton(
    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 0.0),
    onPressed: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => MyStore("$typeChannel", id)));
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
          "$typeChannel",
          style: TextStyle(
              fontFamily: "RobotoBlack", color: Colors.white, fontSize: 13.0),
        ),
      ),
    ),
  );
}
