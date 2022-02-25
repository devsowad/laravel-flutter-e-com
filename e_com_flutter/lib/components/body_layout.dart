import 'package:flutter/material.dart';

import '../utils/constant.dart';

class BodyLayout extends StatelessWidget {
  const BodyLayout({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: child,
      ),
    );
  }
}
