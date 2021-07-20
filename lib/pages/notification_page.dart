import 'package:covid_app/pages/home_page.dart';
import 'package:covid_app/theme.dart';
import 'package:covid_app/widgets/bottom_app_bar.dart';
import 'package:covid_app/widgets/notification_tile.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      bottomNavigationBar: BottomAppBar(
        child: BottomBar(),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 24,
                left: 15,
              ),
              child: Container(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Image.asset(
                    'asset/back_icon.png',
                    width: 44,
                    height: 44,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Notification',
                    style: titleTextStyle,
                  ),
                  Text(
                    'Mark as Read',
                    style: bodyMediumTextStyle.copyWith(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 5,
              ),
              child: Column(
                children: [
                  NotificationTile(
                    'asset/notif_icon.png',
                    'System Update',
                    'Just Now',
                    true,
                  ),
                  NotificationTile(
                    'asset/notif_icon.png',
                    'Covid Test Update',
                    '1 hour ago',
                    false,
                  ),
                  NotificationTile(
                    'asset/notif_icon.png',
                    'Congratulation',
                    '46 min ago',
                    false,
                  ),
                ],
              )
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Text(
                'Inbox',
                style: titleTextStyle,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 5,
              ),
              child: Column(
                children: [
                  NotificationTile(
                    'asset/inbox_icon.png',
                    'Support Chat',
                    'Today',
                    true,
                  ),
                  NotificationTile(
                    'asset/inbox_icon.png',
                    'Support Chat',
                    '2 days ago',
                    false,
                  ),
                  NotificationTile(
                    'asset/inbox_icon.png',
                    'Test Results',
                    '4 days ago',
                    false,
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
