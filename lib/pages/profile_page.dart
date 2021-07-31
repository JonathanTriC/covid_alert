import 'package:covid_app/widgets/profile_tile.dart';
import 'package:flutter/material.dart';
import 'package:covid_app/theme.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 24,
                left: 15,
                right: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
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
                  Text(
                    'Profile',
                    style: titleTextStyle,
                  ),
                  Container(
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Image.asset(
                        'asset/option_icon.png',
                        width: 34,
                        height: 34,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Row(
                children: [
                  Image.asset(
                    'asset/profile_pic.png',
                    width: 70,
                    height: 70,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jonathan Tri C',
                        style: titleTextStyle,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Cengkareng, Jakarta Barat',
                        style: bodyMediumTextStyle.copyWith(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Account Settings',
                    style: bodyMediumTextStyle.copyWith(
                      color: blackColor,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ProfileTile(
                    'asset/lock_icon.png',
                    'Change Password',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ProfileTile(
                    'asset/rate_icon.png',
                    'Rate Our App',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ProfileTile(
                    'asset/support_icon.png',
                    'Support',
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  ProfileTile(
                    'asset/logout_icon.png',
                    'Logout',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
