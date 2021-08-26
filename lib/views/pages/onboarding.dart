import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myhabits/assets/strings_us.dart';
import 'package:myhabits/assets/themes.dart';
import 'package:myhabits/views/pages/home.dart';
import 'package:onboarding/onboarding.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../routes.dart';

final onboardingPagesList = [
  PageModel(
    widget: Column(
      children: [
        Container(
            padding: EdgeInsets.only(bottom: 45.0),
            child: Image.asset('assets/images/facebook.png',
                color: pageImageColor)),
        Container(
            width: double.infinity,
            child: Text('Simple track your habits', style: textThemeData.headline1, textAlign: TextAlign.start),),
        Container(
          width: double.infinity,
          child: Text('Keep your files in closed safe so you can\'t lose them', style: textThemeData.bodyText1, textAlign: TextAlign.start),
        ),
      ],
    ),
  ),
  PageModel(
    widget: Column(
      children: [
        Container(
            padding: EdgeInsets.only(bottom: 45.0),
            child: Image.asset('assets/images/facebook.png',
                color: pageImageColor)),
        Container(
          width: double.infinity,
          child: Text('Simple track your habits', style: textThemeData.headline1, textAlign: TextAlign.start),),
        Container(
          width: double.infinity,
          child: Text('Keep your files in closed safe so you can\'t lose them', style: textThemeData.bodyText1, textAlign: TextAlign.start),
        ),
      ],
    ),
  ),
  PageModel(
    widget: Column(
      children: [
        Container(
            padding: EdgeInsets.only(bottom: 45.0),
            child: Image.asset('assets/images/facebook.png',
                color: pageImageColor)),
        Container(
          width: double.infinity,
          child: Text('Simple track your habits', style: textThemeData.headline1, textAlign: TextAlign.start),),
        Container(
          width: double.infinity,
          child: Text('Keep your files in closed safe so you can\'t lose them', style: textThemeData.bodyText1, textAlign: TextAlign.start),
        ),
      ],
    ),
  ),
];

class OnboardingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Onboarding(
      background: themeData.backgroundColor,
      proceedButtonStyle: ProceedButtonStyle(
        proceedpButtonText: new Text(introBtnStart, style: textThemeData.button,),
        proceedButtonRoute: (context) {
          Future<SharedPreferences> prefsFuture = SharedPreferences.getInstance();
          prefsFuture.then((prefs) {
            prefs.setBool('isStarted', true);
          });
          return Navigator.pushReplacement(context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),);
        }),
      pages: onboardingPagesList,
      indicator: Indicator(
        indicatorDesign: IndicatorDesign.line(
          lineDesign: LineDesign(
            lineType: DesignType.line_uniform,
          ),
        ),
      ),
    );
  }
}