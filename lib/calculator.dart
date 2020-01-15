import 'package:calculator/custom_button.dart';

import 'package:flutter/material.dart';

import 'inti_data.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int total = 0;
  String currentNumber = "";
  String hRezult = "";
  String rezult = "";

  onPressed(Type t, String s) {
    if (t == Type.clearall) {
      setState(() {
        hRezult = "";
        rezult = "";
        total = 0;
        currentNumber = "";
      });
    }

    if (t == Type.clear) {
      setState(() {
        if (hRezult.length > 0)
          hRezult = hRezult.substring(0, hRezult.length - 1);

        if (hRezult.length == 0) rezult = "";

        total = 0;
        currentNumber = "";
      });
    }

    if (t == Type.number) {
      setState(() {
        hRezult = hRezult + s;
        currentNumber = currentNumber + s;
      });
    }

    if (Type.operations == t) {
      if (s == "+") {
        setState(() {
          hRezult = hRezult + "+";
          total = total + int.parse(currentNumber);
          currentNumber = "";
          rezult = total.toString();
          // rezult=(int.parse(rezult) + 1).toString();
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    List<CustomButton> buttonList = getButtons(onPressed);

    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(16),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      '$hRezult',
                      textAlign: TextAlign.right,
                      style: Theme.of(context).textTheme.display1,
                    ),
                    Text(
                      "$rezult",
                      textAlign: TextAlign.right,
                      style: Theme.of(context).textTheme.headline,
                    )
                  ],
                ),
              )),
          Expanded(
            flex: 2,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .75,
              child: GridView.count(
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
                crossAxisCount: 4,
                addAutomaticKeepAlives: true,
                children: buttonList,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
