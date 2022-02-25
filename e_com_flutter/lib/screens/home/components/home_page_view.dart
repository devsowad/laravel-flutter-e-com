import 'package:e_com_flutter/screens/product_details/product_details_screen.dart';

import 'product_condition.dart';
import 'package:flutter/material.dart';

import '../../../components/default_gap.dart';
import '../../../components/default_text.dart';
import '../../../utils/colors.dart';
import '../../../utils/constant.dart';
import '../../../utils/size_config.dart';
import 'rating_reviews.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: getProportionateScreenWidth(290),
          child: PageView.builder(
            itemCount: 5,
            itemBuilder: ((context, index) => _buildPageItem(index)),
            onPageChanged: (currentPage) =>
                setState(() => this.currentPage = currentPage),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(5, (index) => buildDot(index)),
        ),
      ],
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: defaultAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 8,
      width: currentPage == index ? 20 : 8,
      decoration: BoxDecoration(
        color: currentPage == index ? mainColor : textColor,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }

  Widget _buildPageItem(int index) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ProductDetailsScreen.routeName);
      },
      child: Stack(
        children: [
          Container(
            height: getProportionateScreenWidth(200),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(getProportionateScreenWidth(30)),
              color: mainColor,
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/food0.png'),
              ),
            ),
          ),
          buildBottomStack(),
        ],
      ),
    );
  }

  Align buildBottomStack() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: getProportionateScreenWidth(120),
        width: double.infinity,
        margin: const EdgeInsets.only(left: 40, right: 40, bottom: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(getProportionateScreenWidth(30)),
          color: whiteColor,
          boxShadow: [defaultBoxShadow()],
        ),
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              DefaultText(
                text: 'Bitter Orange Marinade',
                fontSize: DefaultFontSize.small,
              ),
              DefaultGap(gap: DefaultGapSize.xSmall),
              RatingAndReviews(),
              Spacer(),
              ProductCondition(),
            ],
          ),
        ),
      ),
    );
  }
}
