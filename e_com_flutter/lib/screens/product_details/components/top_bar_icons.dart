import '../../../components/default_icon_button.dart';
import '../../../utils/constant.dart';
import 'package:flutter/material.dart';

class TopBarIcons extends StatelessWidget {
  const TopBarIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      top: defaultPadding,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DefaultIconButton(
              icon: Icons.arrow_back_ios_rounded,
              radius: 50,
              size: 13,
              width: 50,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            DefaultIconButton(
              icon: Icons.shopping_basket,
              radius: 50,
              size: 13,
              width: 50,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
