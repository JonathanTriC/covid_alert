import 'package:flutter/material.dart';
import 'package:covid_app/theme.dart';

class Symptoms extends StatelessWidget {
  final String imageUrl;
  final String text;

  Symptoms(this.imageUrl, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: Column(
          children: [
            Image.asset(
              imageUrl,
              width: 60,
              height: 60,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              text,
              style: titleTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ],
        ),
    );
  }
}
