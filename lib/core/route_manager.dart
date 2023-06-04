import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart' show CupertinoPageRoute;
import 'package:flutter/foundation.dart' show immutable;
import 'package:flutter/material.dart'
    show MaterialPageRoute, Route, RouteSettings, Widget, Container;

import '../common/constants/colors.dart';
import '../view/home_view.dart';
import '../view/product_view.dart';

@immutable
abstract class AppRoutesManager {
  // home and detail view

  static const String homeView = '/';
  static const String productView = '/productView';

  const AppRoutesManager._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeView:
        return decideRouteTypeFromDevice(
          settings,
          const HomeView(),
        );
      case productView:
        return decideRouteTypeFromDevice(
          settings,
          const ProductView(),
        );
      default:
        return decideRouteTypeFromDevice(
          settings,
          Container(
            height: 150,
            width: 150,
            color: AppColors.red,
          ),
        );
    }
  }


  static Route<dynamic> decideRouteTypeFromDevice(
      RouteSettings settings, Widget widget) {
    if (Platform.isIOS) {
      return CupertinoPageRoute(
        builder: (_) => widget,
        settings: settings,
        fullscreenDialog: true,
      );
    } else {
      return MaterialPageRoute(
        builder: (_) => widget,
        settings: settings,
        fullscreenDialog: true,
      );
    }
  }



}
