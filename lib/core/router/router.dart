import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../features/create_account/Presentation/screens/create_account/create_account_for_optician_screen_one.dart';
import '../../features/create_account/Presentation/screens/create_account/create_account_for_optician_using_google_screen_.dart';


abstract class Routes {

  static const sample = '/sample';
  static const createAccountForOpticianScreenOne = '/createAccountForOpticianScreenOne';
  static const createAccountForOpticianUsingGoogle = '/createAccountForOpticianUsingGoogleScreen';

}

class Routers {
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.sample:
        return getRoute(const Placeholder(), settings);
      case Routes.createAccountForOpticianScreenOne:
        return getRoute(const CreateAccountForOpticianScreenOne(), settings);
      case Routes.createAccountForOpticianUsingGoogle:
        return getRoute(const CreateAccountForOpticianUsingGoogleScreen(), settings);
      default:
        return null;
    }
  }
}


Route<dynamic> getRoute(Widget widget, RouteSettings? settings) {
  if (Platform.isAndroid) {
    return MaterialPageRoute<dynamic>(
        builder: (context) => widget, settings: settings);
  } else {
    return CupertinoPageRoute<dynamic>(
        builder: (context) => widget, settings: settings);
  }
}

