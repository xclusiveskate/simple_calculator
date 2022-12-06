import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:simple_calculator/rowcolumnmethod/column_button.dart';

class ColumnPage extends StatefulWidget {
  const ColumnPage({super.key});

  @override
  State<ColumnPage> createState() => _ColumnPageState();
}

class _ColumnPageState extends State<ColumnPage> {
  var userQuestion = "user question";
  var userAnswer = "user answer";
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                // color: Colors.red,
                child: Text(userAnswer),
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
                child: Text(userQuestion),
              )),
          Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ColumnButton(
                        text: "C",
                        fillColor: Colors.white,
                        textColor: Colors.orange,
                        textSize: 26,
                        callBack: () {},
                      ),
                      ColumnButton(
                        text: "AC",
                        fillColor: Colors.white,
                        textColor: Colors.orange,
                        textSize: 24,
                        callBack: () {},
                      ),
                      ColumnButton(
                        text: "%",
                        fillColor: Colors.white,
                        textColor: Colors.orange,
                        textSize: 24,
                        callBack: () {},
                      ),
                      ColumnButton(
                        text: "/",
                        fillColor: Colors.white,
                        textColor: Colors.orange,
                        textSize: 24,
                        callBack: () {},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ColumnButton(
                        text: "7",
                        fillColor: Colors.white,
                        textColor: Colors.black,
                        textSize: 24,
                        callBack: () {},
                      ),
                      ColumnButton(
                        text: "8",
                        fillColor: Colors.white,
                        textColor: Colors.black,
                        textSize: 24,
                        callBack: () {},
                      ),
                      ColumnButton(
                        text: "9",
                        fillColor: Colors.white,
                        textColor: Colors.black,
                        textSize: 24,
                        callBack: () {},
                      ),
                      ColumnButton(
                        text: "X",
                        fillColor: Colors.white,
                        textColor: Colors.orange,
                        textSize: 26,
                        callBack: () {},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ColumnButton(
                        text: "4",
                        fillColor: Colors.white,
                        textColor: Colors.black,
                        textSize: 24,
                        callBack: () {},
                      ),
                      ColumnButton(
                        text: "5",
                        fillColor: Colors.white,
                        textColor: Colors.black,
                        textSize: 24,
                        callBack: () {},
                      ),
                      ColumnButton(
                        text: "6",
                        fillColor: Colors.white,
                        textColor: Colors.black,
                        textSize: 24,
                        callBack: () {},
                      ),
                      ColumnButton(
                        text: "-",
                        fillColor: Colors.white,
                        textColor: Colors.orange,
                        textSize: 28,
                        callBack: () {},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ColumnButton(
                        text: "1",
                        fillColor: Colors.white,
                        textColor: Colors.black,
                        textSize: 24,
                        callBack: () {},
                      ),
                      ColumnButton(
                        text: "2",
                        fillColor: Colors.white,
                        textColor: Colors.black,
                        textSize: 24,
                        callBack: () {},
                      ),
                      ColumnButton(
                        text: "3",
                        fillColor: Colors.white,
                        textColor: Colors.black,
                        textSize: 24,
                        callBack: () {},
                      ),
                      ColumnButton(
                        text: "+",
                        fillColor: Colors.white,
                        textColor: Colors.orange,
                        textSize: 24,
                        callBack: () {},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ColumnButton(
                        text: "Sc",
                        fillColor: Colors.white,
                        textColor: Colors.black,
                        textSize: 24,
                        callBack: () {},
                      ),
                      ColumnButton(
                        text: "0",
                        fillColor: Colors.white,
                        textColor: Colors.black,
                        textSize: 24,
                        callBack: () {},
                      ),
                      ColumnButton(
                        text: ".",
                        fillColor: Colors.white,
                        textColor: Colors.black,
                        textSize: 24,
                        callBack: () {},
                      ),
                      ColumnButton(
                        text: "=",
                        fillColor: Colors.orange,
                        textColor: Colors.white,
                        textSize: 28,
                        callBack: () {},
                      ),
                    ],
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
