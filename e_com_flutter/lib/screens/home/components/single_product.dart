import '../../product_details/product_details_screen.dart';

import '../../../components/default_gap.dart';
import '../../../components/default_text.dart';
import 'product_condition.dart';
import '../../../utils/colors.dart';
import '../../../utils/constant.dart';
import '../../../utils/size_config.dart';
import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
  const SingleProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ProductDetailsScreen.routeName);
      },
      child: Row(
        children: [
          Container(
            width: 120,
            height: 120,
            margin: const EdgeInsets.symmetric(vertical: DefaultGapSize.xSmall),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                getProportionateScreenWidth(20),
              ),
              color: mainColor,
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/food0.png'),
              ),
            ),
          ),
          const DefaultGap(
            horizontal: true,
            gap: DefaultGapSize.small,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                DefaultText(text: 'Nutritious Food'),
                DefaultText(
                  text: 'very long long long long long description',
                  fontSize: DefaultFontSize.xSmall,
                  color: textColor,
                ),
                ProductCondition(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
