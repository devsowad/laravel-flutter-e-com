import 'package:flutter/material.dart';

import '../../../components/default_gap.dart';
import '../../../components/default_text.dart';
import '../../../utils/colors.dart';
import '../../../utils/constant.dart';

class ProductCondition extends StatelessWidget {
  const ProductCondition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildIconAndText(
          icon: Icons.circle_sharp,
          text: 'Normal',
        ),
        _buildIconAndText(
          icon: Icons.location_on,
          text: '1.7km',
          color: mainColor,
        ),
        _buildIconAndText(
          icon: Icons.access_time_rounded,
          text: '30 min',
        ),
      ],
    );
  }

  Expanded _buildIconAndText({
    required IconData icon,
    required String text,
    Color color = iconColor2,
  }) {
    return Expanded(
      child: Row(
        children: [
          Icon(
            icon,
            color: color,
            size: DefaultFontSize.small + 3,
          ),
          const DefaultGap(gap: DefaultGapSize.xSmall, horizontal: true),
          Expanded(
            child: DefaultText(
              text: text,
              fontSize: DefaultFontSize.xSmall,
              color: textColor,
            ),
          )
        ],
      ),
    );
  }
}
