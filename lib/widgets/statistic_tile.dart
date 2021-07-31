import 'package:flutter/material.dart';
import 'package:covid_app/theme.dart';

class StatisticTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String count;

  StatisticTile(
    this.imageUrl,
    this.title,
    this.count,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
        ),
        Text(
          count,
          style: titleTextStyle,
        ),
        Image.asset(
          imageUrl,
          width: 150,
        ),
      ],
    );
  }
}
