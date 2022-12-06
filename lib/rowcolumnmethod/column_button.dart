import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColumnButton extends StatelessWidget {
  final String text;
  final Color fillColor;
  final Color textColor;
  final double textSize;
  final Function callBack;

  const ColumnButton({
    super.key,
    required this.text,
    required this.fillColor,
    required this.textColor,
    required this.textSize,
    required this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.green,
      // padding: const EdgeInsets.all(6.0),
      margin: const EdgeInsets.all(6.0),
      child: SizedBox(
        width: 70,
        height: 70,
        child: OutlinedButton(
            onPressed: () => callBack,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(fillColor),
              shape: MaterialStateProperty.resolveWith(
                  (states) => RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
            ),
            child: Text(text,
                style: GoogleFonts.rubik(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    textStyle: TextStyle(
                      fontSize: textSize,
                    )))),
      ),
    );
  }
}
