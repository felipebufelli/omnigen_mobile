import 'package:flutter/material.dart';
import 'package:omnigen_mobile/models/steps.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  int current_step = 0;

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
              padding: const EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 20.0),
              child: Text(
                "Cadastrar",
                style: TextStyle(
                  fontFamily: "ComfortaaRegular",
                  fontSize: 36,
                  color: Color.fromRGBO(183, 10, 16, 1.0),
                ),
              ),
            ),
            Stepper(
              steps: steps,
              currentStep: this.current_step,
              type: StepperType.vertical,
              onStepTapped: (step) {
                setState(() {
                  current_step = step;
                });
              },
              onStepCancel: () {
                setState(() {
                  if (current_step > 0) {
                    current_step = current_step - 1;
                  } else {
                    current_step = 0;
                  }
                });
              },
              onStepContinue: () {
                setState(() {
                  if (current_step < steps.length - 1) {
                    current_step = current_step + 1;
                  } else {
                    current_step = 0;
                  }
                });
              },
            ),
            FlatButton(
              padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 50.0),
              onPressed: () {},
              child: Container(
                width: 325.0,
                height: 52.0,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(183, 10, 16, 1.0),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                    child: Text(
                  "CADASTRAR",
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
