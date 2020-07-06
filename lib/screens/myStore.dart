import 'package:flutter/material.dart';
import 'package:omnigen_mobile/models/info.dart';

class MyStore extends StatefulWidget {
  final String typeChannel;
  final int id;
  MyStore(this.typeChannel, this.id);

  @override
  _MyStoreState createState() => _MyStoreState();
}

class _MyStoreState extends State<MyStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          widget.typeChannel,
          style: TextStyle(
            fontFamily: "ComfortaaBold",
            fontSize: 25.0,
            color: const Color.fromRGBO(183, 10, 16, 1.0),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: infos(widget.id)
          ),
        ),
      ),
      bottomNavigationBar: FlatButton(
        onPressed: () {},
        child: widget.typeChannel == "Minha loja"
            ? Container(
                margin: const EdgeInsets.only(bottom: 15.0),
                width: 325.0,
                height: 52.0,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(183, 10, 16, 1.0),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                    child: Text(
                  "CADASTRAR NOVA VENDA",
                  style: TextStyle(
                      fontFamily: "RobotoBlack",
                      color: Colors.white,
                      fontSize: 13.0),
                )),
              )
            : Container(
                width: 5.0,
                height: 5.0,
                color: Colors.white,
              ),
      ),
    );
  }
}

Widget infos(int id) {
  if (id == 0) {
    return Column(
      children: <Widget>[
        boxInfo("Custo", "R\$0,0"),
        boxInfo("Receita", "R\$0,0"),
        boxInfo("Rendimento", "R\$0,0"),
        boxInfo("Porcentagem", "0%"),
      ],
    );
  } if (id == 1) {
    return Column(
      children: <Widget>[
        boxInfo("Custo", "R\$1336,35"),
        boxInfo("Receita", "R\$2550,00"),
        boxInfo("Rendimento", "R\$1213,65"),
        boxInfo("Porcentagem", "31%"),
      ],
    );
  } if (id == 2) {
    return Column(
      children: <Widget>[
        boxInfo("Custo", "R\$1227,68"),
        boxInfo("Receita", "R\$2220,00"),
        boxInfo("Rendimento", "R\$992,32"),
        boxInfo("Porcentagem", "27%"),
      ],
    );
  }if (id == 3) {
    return Column(
      children: <Widget>[
        boxInfo("Custo", "R\$1330,00"),
        boxInfo("Receita", "R\$2500,00"),
        boxInfo("Rendimento", "R\$1170,00"),
        boxInfo("Porcentagem", "30%"),
      ],
    );
  }
  if (id == 4) {
    return Column(
      children: <Widget>[
        boxInfo("Custo", "R\$480,00"),
        boxInfo("Receita", "R\$1000,00"),
        boxInfo("Rendimento", "R\$520,00"),
        boxInfo("Porcentagem", "12%"),
      ],
    );
  }
  else {
    return Container();
  }
}

Widget boxInfo(String name, String value) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 15.0),
    width: 282,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(
        color: const Color.fromRGBO(183, 10, 16, 1.0),
        width: 5.0,
      ),
    ),
    child: info("$name", "$value"),
  );
}
