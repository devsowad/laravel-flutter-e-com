import '../utils/constant.dart';
import '../utils/size_config.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class DefaultText extends StatelessWidget {
  const DefaultText({
    Key? key,
    this.color = titleColor,
    required this.text,
    this.fontSize = DefaultFontSize.medium,
    this.overflow = TextOverflow.ellipsis,
    this.fontWeight = FontWeight.normal,
  }) : super(key: key);

  final Color color;
  final String text;
  final double fontSize;
  final TextOverflow overflow;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: getProportionateScreenWidth(fontSize),
        color: color,
        fontWeight: fontWeight,
      ),
      overflow: overflow,
    );
  }
}
