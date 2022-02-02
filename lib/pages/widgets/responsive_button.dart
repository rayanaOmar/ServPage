import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:services_page/misc/colors.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive; 
  double? width;
  
  ResponsiveButton({Key? key,
  this.width,
  this.isResponsive = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: width,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.button2
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset("lib/assist/button-one-white.png")
        ],
      ),
    );
  }
}
