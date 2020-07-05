import 'package:flutter/material.dart';

List<Step> steps = [
  Step(
    title: Text(
      "Email",
      style: TextStyle(
        fontFamily: "ComfortaaRegular",
        fontSize: 25,
        color: Color.fromRGBO(183, 10, 16, 1.0),
      ),
    ),
    state: StepState.editing,
    isActive: true,
    content: Container(
      width: 325.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(183, 10, 16, 1.0),
        borderRadius: BorderRadius.circular(15)
      ),
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
  ),
  Step(
    title: Text(
      "Senha",
      style: TextStyle(
        fontFamily: "ComfortaaRegular",
        fontSize: 25.0,
        color: Color.fromRGBO(183, 10, 16, 1.0),
      ),
    ),
    state: StepState.editing,
    isActive: true,
    content: Container(
      margin: const EdgeInsets.fromLTRB(15.0, 0.0, 30.0, 15.0),
      width: 325.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(183, 10, 16, 1.0),
        borderRadius: BorderRadius.circular(15)
      ),
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
  ),
  Step(
    title: Text(
      "Foto de Perfil",
      style: TextStyle(
        fontFamily: "ComfortaaRegular",
        fontSize: 25,
        color: Color.fromRGBO(183, 10, 16, 1.0),
      ),
    ),
    state: StepState.editing,
    isActive: true,
    content: GestureDetector(
      child: Container(
        margin: const EdgeInsets.only(right: 25.0),
        width: 100.0,
        height: 100.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromRGBO(183, 10, 16, 1.0),
        ),
        child: Icon(
          Icons.add_a_photo,
          size: 38.0,
        ),
      ),
    ),
  ),
  Step(
    title: Text(
      "Nome público",
      style: TextStyle(
        fontFamily: "ComfortaaRegular",
        fontSize: 25,
        color: Color.fromRGBO(183, 10, 16, 1.0),
      ),
    ),
    state: StepState.editing,
    isActive: true,
    content: Container(
      width: 325.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(183, 10, 16, 1.0),
        borderRadius: BorderRadius.circular(15)
      ),
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
            labelText: "Nome",
            labelStyle: TextStyle(
              fontFamily: "RobotoBlack",
              color: Colors.white,
              fontSize: 15.0,
            ),
          ),
        ),
      ),
    ),
  ),
  Step(
    title: Text(
      "Endereço",
      style: TextStyle(
        fontFamily: "ComfortaaRegular",
        fontSize: 25,
        color: Color.fromRGBO(183, 10, 16, 1.0),
      ),
    ),
    state: StepState.editing,
    isActive: true,
    content: Container(
      width: 325.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(183, 10, 16, 1.0),
        borderRadius: BorderRadius.circular(15)
      ),
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
            labelText: "Endereço",
            labelStyle: TextStyle(
              fontFamily: "RobotoBlack",
              color: Colors.white,
              fontSize: 15.0,
            ),
          ),
        ),
      ),
    ),
  ),
  Step(
    title: Text(
      "CNPJ",
      style: TextStyle(
        fontFamily: "ComfortaaRegular",
        fontSize: 25,
        color: Color.fromRGBO(183, 10, 16, 1.0),
      ),
    ),
    state: StepState.editing,
    isActive: true,
    content: Container(
      width: 325.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(183, 10, 16, 1.0),
        borderRadius: BorderRadius.circular(15)
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: TextField(
          cursorColor: Colors.white,
          textAlignVertical: TextAlignVertical.bottom,
          style: TextStyle(
            color: Colors.white,
          ),
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: "CNPJ",
            labelStyle: TextStyle(
              fontFamily: "RobotoBlack",
              color: Colors.white,
              fontSize: 15.0,
            ),
          ),
        ),
      ),
    ),
  ),
];
