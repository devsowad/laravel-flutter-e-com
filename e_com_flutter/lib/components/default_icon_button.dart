import '../utils/constant.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class DefaultIconButton extends StatelessWidget {
  const DefaultIconButton({
    Key? key,
    required this.icon,
    this.bgColor = mainColor,
    this.iconColor = whiteColor,
    this.radius = 10,
    this.size,
    this.width = 40,
    this.height = 40,
    this.buttonRippleColor = rippleColor,
    required this.onPressed,
  }) : super(key: key);

  final Color bgColor, buttonRippleColor, iconColor;
  final IconData icon;
  final double? size;
  final double radius, width, height;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        boxShadow: [
          defaultBoxShadow(),
        ],
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          primary: buttonRippleColor,
          backgroundColor: bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        onPressed: onPressed,
        child: Icon(
          icon,
          color: iconColor,
          size: size,
        ),
      ),
    );
  }
}
