import '../utils/colors.dart';
import '../utils/constant.dart';
import '../utils/size_config.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    this.fontSize = DefaultFontSize.base,
    this.radius = 20,
    this.elevation = 10,
    this.color = mainColor,
    required this.text,
  }) : super(key: key);

  final double fontSize, radius, elevation;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(
            horizontal: defaultPadding,
            vertical: defaultPadding,
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(color),
        elevation: MaterialStateProperty.all<double>(elevation),
      ),
      child: Text(
        text.toUpperCase(),
        style: TextStyle(
          color: Colors.white,
          fontSize: getProportionateScreenWidth(fontSize),
        ),
      ),
    );
  }
}
