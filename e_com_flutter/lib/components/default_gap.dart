import '../utils/constant.dart';
import '../utils/size_config.dart';
import 'package:flutter/material.dart';

class DefaultGap extends StatelessWidget {
  const DefaultGap(
      {Key? key, this.gap = DefaultGapSize.medium, this.horizontal = false})
      : super(key: key);

  final double gap;
  final bool horizontal;

  @override
  Widget build(BuildContext context) {
    return horizontal
        ? SizedBox(width: getProportionateScreenWidth(gap))
        : SizedBox(height: getProportionateScreenWidth(gap));
  }
}
