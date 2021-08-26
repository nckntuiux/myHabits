import 'package:flutter/material.dart';
import 'package:myhabits/assets/strings_us.dart';
import 'package:myhabits/views/pages/home.dart';

class Routes {
  Routes._();

  //static variables
  static const String getStarted = '/getStarted';
  static const String home = '/';
  static const String detail = '/detail';

  static final routes = <String, WidgetBuilder>{
    home: (BuildContext context) => HomePage(title: appName),
    //detail: (BuildContext context) => DetailModal(),
  };
}