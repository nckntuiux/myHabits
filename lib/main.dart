import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myhabits/assets/strings_us.dart';
import 'package:myhabits/assets/themes.dart';
import 'package:myhabits/routes.dart';
import 'package:myhabits/views/pages/home.dart';
import 'package:myhabits/views/pages/onboarding.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:onboarding/onboarding.dart';

void main() {
  runApp(HabitApp());
}

class HabitApp extends StatefulWidget {
  @override
  _HabitAppState createState() => _HabitAppState();
}

class _HabitAppState extends State<HabitApp> {
  Widget _body;

  @override
  void initState() {
    super.initState();
    _loadStarted();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      title: appName,
      theme: themeData,
      home: Scaffold(
        body: _body,
      )
    );
  }

  void _loadStarted() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isStarted = prefs.getBool('isStarted') == null;
    setState(() {
      _body = isStarted ? OnboardingPage() : OnboardingPage();
    });
  }
}


