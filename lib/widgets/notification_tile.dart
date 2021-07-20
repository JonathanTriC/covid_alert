import 'package:flutter/material.dart';
import 'package:covid_app/theme.dart';

class NotificationTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String time;
  final bool unread;

  NotificationTile(
    this.imageUrl,
    this.title,
    this.time,
    this.unread,
  );

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        imageUrl,
        height: 50,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: unread ? titleTextStyle.copyWith(
              fontSize: 16,
            ) : titleTextStyle.copyWith(
              fontSize: 16,
              color: Color(0xffAEAEAE),
            ),
          ),
          Text(
            time,
            style: bodyMediumTextStyle.copyWith(
              fontSize: 14,
              color: Color(0xffBBBBBB),
            ),
          ),
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'A newer version is available.',
            style: bodyMediumTextStyle.copyWith(
              fontSize: 14,
              color: Color(0xffBBBBBB),
            ),
          ),
          Image.asset(
            'asset/option_icon.png',
            width: 20,
          ),
        ],
      ),
    );
  }
}
