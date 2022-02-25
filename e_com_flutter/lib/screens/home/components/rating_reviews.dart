import '../../../utils/constant.dart';

import '../../../components/default_text.dart';
import '../../../utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingAndReviews extends StatelessWidget {
  const RatingAndReviews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RatingBarIndicator(
          rating: 2.5,
          direction: Axis.horizontal,
          itemSize: 20,
          itemCount: 5,
          itemBuilder: (context, _) =>
              const Icon(Icons.star, color: Colors.orange),
        ),
        const VerticalDivider(color: textColor, width: 10),
        const DefaultText(
          text: '2.5',
          fontSize: DefaultFontSize.xSmall,
          color: textColor,
        ),
        const VerticalDivider(color: textColor, width: 15),
        const Expanded(
          child: DefaultText(
            text: '11 reviews',
            fontSize: DefaultFontSize.xSmall,
            color: textColor,
          ),
        ),
      ],
    );
  }
}
