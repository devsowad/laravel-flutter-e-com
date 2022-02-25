import '../screens/home/home_screen.dart';
import '../screens/product_details/product_details_screen.dart';
import 'package:flutter/cupertino.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => const HomeScreen(),
  ProductDetailsScreen.routeName: (context) => const ProductDetailsScreen(),
};
