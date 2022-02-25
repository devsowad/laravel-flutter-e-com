import 'package:e_com_flutter/data/controller/popular_product_controller.dart';
import 'package:e_com_flutter/utils/custom_scroll_behavior.dart';
import 'package:get/get.dart';
import 'utils/routes.dart';
import 'screens/home/home_screen.dart';
import 'utils/theme.dart';
import 'package:flutter/material.dart';
import 'data/helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProducts();
    // show popular products on home screen
    // Tutorial time: 6:54:54

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: themeData(),
      scrollBehavior: MyCustomScrollBehavior(),
      routes: routes,
      initialRoute: HomeScreen.routeName,
    );
  }
}
