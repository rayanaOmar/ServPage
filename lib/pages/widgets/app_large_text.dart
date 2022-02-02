import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  final TextAlign textAlign;
  final TextDirection textDirection;


  AppLargeText({Key? key,
    this.size = 20,
    required this.text,
    this.color = Colors.black,
    this.textAlign = TextAlign.right,
    required this.textDirection
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: FontWeight.bold
      ),
    );
  }
}

