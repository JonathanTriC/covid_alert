import 'package:flutter/material.dart';
import 'package:covid_app/theme.dart';

class CommonSymptoms extends StatelessWidget {
  final String text;

  CommonSymptoms(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 5,
        bottom: 8,
      ),
      height: 35,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: Colors.blue[50],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
        ),
        child: Text(
          text,
          style: ctaTextStyle,
        ),
      ),
    );
  }
}
