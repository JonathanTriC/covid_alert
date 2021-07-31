import 'package:flutter/material.dart';
import 'package:covid_app/theme.dart';

class ProfileTile extends StatelessWidget {
  final String imageUrl;
  final String title;

  ProfileTile(
    this.imageUrl,
    this.title,
  );

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Image.asset(
        imageUrl,
        height: 45,
        width: 45,
      ),
      title: Text(
        title,
        style: bodyMediumTextStyle.copyWith(
          color: blackColor,
          fontSize: 18,
          fontWeight: FontWeight.w100,
        ),
      ),
      trailing: Icon(
        Icons.keyboard_arrow_right,
        color: Color(0xffAEAEAE),
        size: 30,
      ),
    );
  }
}
