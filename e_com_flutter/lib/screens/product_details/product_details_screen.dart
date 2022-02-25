import '../../components/default_button.dart';
import '../../components/default_gap.dart';
import '../../components/default_icon_button.dart';
import '../../components/default_text.dart';
import 'components/body.dart';
import '../../utils/colors.dart';
import '../../utils/constant.dart';
import '../../utils/size_config.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);
  static String routeName = '/product-details';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: const Body(),
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(defaultPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DefaultIconButton(
                    icon: Icons.remove,
                    radius: 50,
                    bgColor: whiteColor,
                    iconColor: mainColor,
                    buttonRippleColor: mainColor,
                    onPressed: () {},
                  ),
                  const DefaultGap(horizontal: true, gap: DefaultGapSize.small),
                  const DefaultText(text: '0'),
                  const DefaultGap(horizontal: true, gap: DefaultGapSize.small),
                  DefaultIconButton(
                    icon: Icons.add,
                    radius: 50,
                    bgColor: whiteColor,
                    iconColor: mainColor,
                    buttonRippleColor: mainColor,
                    onPressed: () {},
                  ),
                ],
              ),
              const DefaultButton(
                text: '\$0.08 add to cart',
                fontSize: DefaultFontSize.small,
              )
            ],
          ),
        ),
      ),
    );
  }
}
