import '../../../components/default_gap.dart';
import '../../../components/default_icon_button.dart';
import '../../../components/default_text.dart';
import '../../home/components/product_condition.dart';
import '../../home/components/rating_reviews.dart';
import 'background_image.dart';
import 'top_bar_icons.dart';
import '../../../utils/colors.dart';
import '../../../utils/constant.dart';
import '../../../utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageHeight = getProportionateScreenHeight(330);

    return SafeArea(
      child: Stack(
        children: [
          BackgroundImage(imageHeight: imageHeight),
          const TopBarIcons(),
          Positioned(
            top: imageHeight - 30,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    getProportionateScreenWidth(30),
                  ),
                  topRight: Radius.circular(
                    getProportionateScreenWidth(30),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    DefaultText(text: 'Bitter Orange Marinade'),
                    DefaultGap(gap: DefaultGapSize.xSmall),
                    RatingAndReviews(),
                    DefaultGap(gap: DefaultGapSize.small),
                    ProductCondition(),
                    DefaultGap(gap: DefaultGapSize.small),
                    DefaultText(
                      text: 'Description',
                      fontSize: DefaultFontSize.base,
                    ),
                    DefaultGap(gap: DefaultGapSize.xSmall),
                    Expanded(
                      child: SingleChildScrollView(
                        child: ReadMoreText(
                          'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                          style: TextStyle(
                            color: titleColor,
                            fontSize: DefaultFontSize.small,
                          ),
                          trimLines: 2,
                          colorClickableText: mainColor,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: 'Show more',
                          trimExpandedText: 'Show less',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
