import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/widgets/button.dart';
import 'calFun.dart';
import 'constant.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: kBackground,
          body: Calculator(),
        ),
      ),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({
    Key key,
  }) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  displayInputs == null ? "" : "$displayInputs",
                  style: typeTextStyle,
                ),
                Align(
                  child: Text(
                    result == null ? "" : "$result",
                    style: kResultTextStyle,
                  ),
                ),
              ],
            ),
          ),
        ),
        Row(
          children: <Widget>[
            CalculatorButton(
              text: "C",
              backgroundColor: kButtonBackground.withOpacity(0.1),
              textColor: kTextColorWhite,
              press: () {
                setState(
                      () {
                    calculation("C");
                  },
                );
              },
            ),
            CalculatorButton(
              text: "+/-",
              textColor: kTextColorWhite,
              backgroundColor: kButtonBackground.withOpacity(0.1),
              press: () {
                setState(
                        () {
                          calculation("-");
                        },
                );
              },
            ),
            CalculatorButton(
              text: "%",
              textColor: kTextColorWhite,
              backgroundColor: kButtonBackground.withOpacity(0.1),
              press: () {
                setState(
                        () {
                          calculation("%");
                          },
                );
              },
            ),
            CalculatorButton(
              text: "/",
              backgroundColor: kButtonBackgroundYellow.withOpacity(0.5),
              textColor: kTextColorWhite,
              press: () {
                setState(
                      () {
                    calculation("/");
                  },
                );
              },
            ),
          ],
        ),
        Row(
          children: <Widget>[
            CalculatorButton(
              text: "7",
              backgroundColor: kButtonBackground.withOpacity(0.2),
              textColor: kTextColorWhite,
              press: () {
                setState(
                      () {
                    calculation("7");
                  },
                );
              },
            ),
            CalculatorButton(
              text: "8",
              backgroundColor: kButtonBackground.withOpacity(0.2),
              textColor: kTextColorWhite,
              press: () {
                setState(
                      () {
                    calculation("8");
                  },
                );
              },
            ),
            CalculatorButton(
              text: "9",
              backgroundColor: kButtonBackground.withOpacity(0.2),
              textColor: kTextColorWhite,
              press: () {
                setState(
                      () {
                    calculation("9");
                  },
                );
              },
            ),
            CalculatorButton(
              text: "x",
              backgroundColor: kButtonBackgroundYellow.withOpacity(0.5),
              textColor: kTextColorWhite,
              press: () {
                setState(
                      () {
                    calculation("x");
                  },
                );
              },
            ),
          ],
        ),
        Row(
          children: <Widget>[
            CalculatorButton(
              text: "4",
              backgroundColor: kButtonBackground.withOpacity(0.2),
              textColor: kTextColorWhite,
              press: () {
                setState(
                      () {
                    calculation("4");
                  },
                );
              },
            ),
            CalculatorButton(
              text: "5",
              backgroundColor: kButtonBackground.withOpacity(0.2),
              textColor: kTextColorWhite,
              press: () {
                setState(
                      () {
                    calculation("5");
                  },
                );
              },
            ),
            CalculatorButton(
              text: "6",
              backgroundColor: kButtonBackground.withOpacity(0.2),
              textColor: kTextColorWhite,
              press: () {
                setState(
                      () {
                    calculation("6");
                  },
                );
              },
            ),
            CalculatorButton(
              text: "-",
              press: () {
                setState(
                      () {
                    calculation("-");
                  },
                );
              },
              backgroundColor: kButtonBackgroundYellow.withOpacity(0.5),
              textColor: kTextColorWhite,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            CalculatorButton(
              text: "1",
              backgroundColor: kButtonBackground.withOpacity(0.2),
              textColor: kTextColorWhite,
              press: () {
                setState(
                      () {
                    calculation("1");
                  },
                );
              },
            ),
            CalculatorButton(
              text: "2",
              backgroundColor: kButtonBackground.withOpacity(0.2),
              textColor: kTextColorWhite,
              press: () {
                setState(
                      () {
                    calculation("2");
                  },
                );
              },
            ),
            CalculatorButton(
              text: "3",
              backgroundColor: kButtonBackground.withOpacity(0.2),
              textColor: kTextColorWhite,
              press: () {
                setState(
                      () {
                    calculation("3");
                  },
                );
              },
            ),
            CalculatorButton(
              text: "+",
              backgroundColor: kButtonBackgroundYellow.withOpacity(0.5),
              textColor: kTextColorWhite,

              press: () {
                setState(
                      () {
                    calculation("+");
                  },
                );
              },
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(),
            ),
            CalculatorButton(
              text: "0",
              backgroundColor: kButtonBackground.withOpacity(0.2),
              textColor: kTextColorWhite,
              press: () {
                setState(
                      () {
                    calculation("0");
                  },
                );
              },
            ),
            CalculatorButton(
              text: ".",
              backgroundColor: kButtonBackground.withOpacity(0.2),
              textColor: kTextColorWhite,
              press: () {
                setState(
                      () {
                    calculation(".");
                  },
                );
              },
            ),
            CalculatorButton(
              text: "=",
              backgroundColor: kButtonBackgroundYellow.withOpacity(0.5),
              textColor: kTextColorWhite,
              press: () {
                setState(
                      () {
                    calculation("=");
                  },
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}