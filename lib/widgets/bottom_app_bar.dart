import 'package:covid_app/theme.dart';
import 'package:flutter/material.dart';


class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Image.asset(
                  'asset/home_bar.png',
                  height: 23,
                ),
                Text(
                  'Home',
                  style: hospitalOpenTextStyle.copyWith(
                    fontSize: 12,
                  ),
                )
              ],
            ),
            Column(
              children: [
                Image.asset(
                  'asset/statistic_bar.png',
                  height: 23,
                ),
                Text(
                  'Statistic',
                  style: hospitalPlaceTextStyle.copyWith(
                    fontSize: 12,
                  ),
                )
              ],
            ),
            Column(
              children: [
                Image.asset(
                  'asset/hospital_bar.png',
                  height: 23,
                ),
                Text(
                  'Hospital',
                  style: hospitalPlaceTextStyle.copyWith(
                    fontSize: 12,
                  ),
                )
              ],
            ),
            Column(
              children: [
                Image.asset(
                  'asset/newsfeed_bar.png',
                  height: 23,
                ),
                Text(
                  'Newsfeed',
                  style: hospitalPlaceTextStyle.copyWith(
                    fontSize: 12,
                  ),
                )
              ],
            ),
            Column(
              children: [
                Image.asset(
                  'asset/profile_bar.png',
                  height: 23,
                ),
                Text(
                  'Profile',
                  style: hospitalPlaceTextStyle.copyWith(
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
