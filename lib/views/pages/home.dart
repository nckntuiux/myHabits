import 'package:flutter/material.dart';
import 'package:myhabits/assets/strings_us.dart';
import 'package:myhabits/assets/themes.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key,this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 32, right: 32, left: 32),
          child: Column(
            children: <Widget>[
              _header(context),
              Expanded(child: Container()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _header(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 10),
      child: Row(children: [
        Expanded(
          child: Text(
            appName,
            textAlign: TextAlign.left,
            style: textThemeData.headline1
          ),
        ),
        FloatingActionButton.extended(
          onPressed: null,
          icon: Icon(Icons.add, color: themeData.primaryColor,),
          label: Text(btnAddHabit, style: textThemeData.button),
          backgroundColor: themeData.backgroundColor,
        )
      ]),
    );
  }
}