import '../../../components/default_text.dart';
import 'popular_products.dart';
import '../../../utils/colors.dart';
import '../../../utils/size_config.dart';

import '../../../components/default_gap.dart';
import '../../../utils/constant.dart';
import 'package:flutter/material.dart';

import '../../../components/body_layout.dart';
import 'header.dart';
import 'home_page_view.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BodyLayout(
      child: Column(
        children: [
          const Header(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  DefaultGap(gap: DefaultGapSize.small),
                  HomePageView(),
                  DefaultGap(gap: DefaultGapSize.medium),
                  PopularProducts(),
                  DefaultGap(gap: DefaultGapSize.medium),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
