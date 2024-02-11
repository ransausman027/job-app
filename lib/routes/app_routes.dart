import 'package:flutter/material.dart';
import 'package:rana_s_application1/presentation/add_product_screen/add_product_screen.dart';
import 'package:rana_s_application1/presentation/show_products_screen/show_products_screen.dart';
import 'package:rana_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String addProductScreen = '/add_product_screen';

  static const String showProductsScreen = '/show_products_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    addProductScreen: (context) => AddProductScreen(),
    showProductsScreen: (context) => ShowProductsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
