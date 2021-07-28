import 'dart:async';

import 'package:covid_app/pages/home_page.dart';
import 'package:covid_app/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  child: Image.asset(
                    'asset/logo.png',
                    height: 145,
                    width: 145,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'COVID ALERT',
                  style: titleTextStyle.copyWith(
                    fontSize: 30,
                    color: blueColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Build by JonathanTriC',
              style: titleTextStyle.copyWith(
                fontSize: 12,
                color: Color(0xffCCCCCC),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
