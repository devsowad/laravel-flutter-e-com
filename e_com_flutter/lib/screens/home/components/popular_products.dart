import '../../../components/default_gap.dart';
import '../../../components/default_text.dart';
import 'single_product.dart';
import '../../../utils/colors.dart';
import '../../../utils/constant.dart';
import '../../../utils/size_config.dart';
import 'package:flutter/material.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            DefaultText(text: 'Popular'),
            DefaultText(
              text: 'Food pairings',
              fontSize: DefaultFontSize.xSmall,
            ),
          ],
        ),
        const DefaultGap(gap: DefaultGapSize.medium),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) => const SingleProduct(),
        ),
      ],
    );
  }
}
