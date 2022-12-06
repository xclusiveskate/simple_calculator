// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:simple_calculator/gridviewmethod/grid_button.dart';
import 'package:math_expressions/math_expressions.dart';

class GridPage extends StatefulWidget {
  const GridPage({super.key});

  @override
  State<GridPage> createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  List<String> bText = [
    "C",
    "Ac",
    "%",
    "/",
    "7",
    "8",
    "9",
    "X",
    "4",
    "5",
    "6",
    "-",
    "1",
    "2",
    "3",
    "+",
    "Sc",
    "0",
    ".",
    "="
  ];

  var userQuestion = "";
  var userAnswer = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple[100],
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.centerRight,
                // color: Colors.red,
                child: Text(
                  userAnswer,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
              )),
          Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.centerRight,
                // color: Colors.red,
                child: Text(
                  userQuestion,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
              )),
          Expanded(
              flex: 4,
              child: GridView.builder(
                  // padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                      // childAspectRatio: 1 / 1,
                      mainAxisExtent: 75.0),
                  itemCount: bText.length,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return GridButton(
                        color: Colors.orange,
                        textColor: Colors.white,
                        buttonText: bText[index],
                        callBack: () {
                          setState(() {
                            userQuestion = "";
                            userAnswer = "";
                          });
                        },
                      );
                    } else if (index == 1) {
                      return GridButton(
                        color: Colors.green,
                        textColor: Colors.white,
                        buttonText: bText[index],
                        longPress: () {
                          setState(() {
                            userQuestion = "";
                          });
                        },
                        callBack: () {
                          setState(() {
                            userQuestion = userQuestion.substring(
                                0, userQuestion.length - 1);
                          });
                        },
                      );
                    } else if (index == bText.length - 1) {
                      return GridButton(
                        color: Colors.deepPurple,
                        textColor: Colors.white,
                        buttonText: bText[index],
                        callBack: () {
                          setState(() {
                            evaluate();
                          });
                        },
                      );
                    } else if (bText[index] == "%") {
                      return GridButton(
                        color: Colors.deepPurple,
                        textColor: Colors.white,
                        buttonText: bText[index],
                        callBack: () {
                          setState(() {
                            userAnswer =
                                (int.parse(userQuestion) / 100).toString();
                          });
                        },
                      );
                    } else if (bText[index] == "Sc") {
                      return GridButton(
                        color: Colors.blue,
                        textColor: Colors.white,
                        buttonText: bText[index],
                        callBack: () {},
                      );
                    } else {
                      return GridButton(
                        color: isOperator(bText[index])
                            ? Colors.deepPurple
                            : const Color.fromARGB(255, 228, 216, 249),
                        textColor: isOperator(bText[index])
                            ? Colors.white
                            : Colors.black,
                        buttonText: bText[index],
                        callBack: () {
                          setState(() {
                            userQuestion += bText[index];
                          });
                        },
                      );
                    }
                  }))
        ],
      ),
    );
  }

  bool isOperator(String X) {
    if (X == "%" || X == "/" || X == "X" || X == "-" || X == "+" || X == "=") {
      return true;
    }
    return false;
  }

  void evaluate() {
    userQuestion = userQuestion.replaceAll('X', '*');
    Parser p = Parser();
    Expression exp = p.parse(userQuestion);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    userAnswer = eval.toString();
  }
}
