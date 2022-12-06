import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget MyButton(String input) {
    return OutlinedButton(
        style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.all(16.0)),
            minimumSize: MaterialStateProperty.all(Size(70, 70)),
            shape: MaterialStateProperty.resolveWith((states) =>
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35))),
            backgroundColor:
                MaterialStateProperty.all(Color.fromARGB(255, 204, 201, 196)),
            foregroundColor: MaterialStateProperty.all(Colors.white)),
        onPressed: () {},
        child: Text(
          input,
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ));
  }

  var inp1ut1;
  var input2;
  var btnValue;
  var result = "0";
  var displayValue = "0";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(flex: 1, child: Result()),
          Expanded(
            flex: 2,
            child: Container(
              // color: Colors.blue,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Wrap(
                  direction: Axis.vertical,
                  alignment: WrapAlignment.center,
                  runAlignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 15.0,
                  runSpacing: 30.0,
                  children: [
                    MyButton("C"),
                    MyButton("7"),
                    MyButton("4"),
                    MyButton("1"),
                    MyButton("O"),
                    MyButton("AC"),
                    MyButton("8"),
                    MyButton("5"),
                    MyButton("2"),
                    MyButton("0"),
                    MyButton("%"),
                    MyButton("9"),
                    MyButton("6"),
                    MyButton("3"),
                    MyButton("."),
                    MyButton("/"),
                    MyButton("X"),
                    MyButton("-"),
                    MyButton("+"),
                    MyButton("="),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget Result() {
    return Container(
        padding: const EdgeInsets.all(16),
        height: MediaQuery.of(context).size.height / 3,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.centerRight,
                  // color: Colors.green,
                  child: Text(result,
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold))),
            ),
            const Spacer(),
            Expanded(
              flex: 1,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.centerRight,
                  // color: Colors.blue,
                  child: Text(
                    displayValue,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
            )
          ],
        ));
  }
}
