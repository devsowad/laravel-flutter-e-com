import '../../../utils/size_config.dart';

import '../../../components/default_icon_button.dart';
import '../../../components/default_text.dart';
import '../../../utils/colors.dart';
import 'package:flutter/material.dart';

import '../../../utils/constant.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DefaultText(text: 'Bangladesh', color: mainColor),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 4),
                  child: Row(
                    children: [
                      const DefaultText(
                        text: 'Hatibandha',
                        fontSize: DefaultFontSize.small,
                      ),
                      Icon(
                        Icons.arrow_drop_down_rounded,
                        color: titleColor,
                        size:
                            getProportionateScreenWidth(DefaultFontSize.medium),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          DefaultIconButton(
            icon: Icons.search,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
