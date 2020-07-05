import 'package:flutter/material.dart';

class MyStore extends StatefulWidget {

  final String typeChannel;
  MyStore(this.typeChannel);
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
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.0),
                  width: 282,
                  height: 373,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: const Color.fromRGBO(183, 10, 16, 1.0),
                      width: 5.0,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.0),
                  width: 282,
                  height: 373,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: const Color.fromRGBO(183, 10, 16, 1.0),
                      width: 5.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: FlatButton(
        onPressed: () {},
        child: widget.typeChannel == "Minha loja" ? Container(
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
                fontFamily: "RobotoBlack", color: Colors.white, fontSize: 13.0),
          )),
        ) : Container(width: 5.0, height: 5.0, color: Colors.white,),
      ),
    );
  }
}
