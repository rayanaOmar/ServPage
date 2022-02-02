import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  final TextAlign textAlign;
  final TextDirection textDirection;


  AppText({Key? key,
    this.size = 15,
    required this.text,
    this.color = Colors.black54,
    this.textAlign = TextAlign.right,
    this.textDirection = TextDirection.rtl
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: size,
      ),
    );
  }
}