import 'package:flutter/material.dart';

class GridButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String buttonText;
  final callBack;
  final longPress;
  const GridButton(
      {super.key,
      required this.color,
      required this.textColor,
      required this.buttonText,
      this.callBack,
      this.longPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        // clipBehavior: Clip.hardEdge,
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          onTap: callBack,
          onLongPress: longPress,
          child: Container(
            // padding: EdgeInsets.all(8.0),
            color: color,
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(
                    color: textColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
