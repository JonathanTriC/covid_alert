import 'package:covid_app/pages/notification_page.dart';
import 'package:covid_app/widgets/news_tile.dart';
import 'package:flutter/material.dart';
import 'package:covid_app/theme.dart';

class NewsfeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
          child: SingleChildScrollView(
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
                  Container(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NotificationPage(),
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Image.asset(
                        'asset/notification_icon.png',
                        width: 44,
                        height: 44,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'News Update',
                    style: titleTextStyle.copyWith(
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Image.asset(
                    'asset/news_banner.png',
                    width: MediaQuery.of(context).size.width,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Latest News',
                    style: titleTextStyle,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  NewsTile(
                    'asset/news_1.png',
                    'Sharp rise in Covid-19 \ncases in border districts.',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  NewsTile(
                    'asset/news_2.png',
                    'Covid scourge creeps up \nagain this month.',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  NewsTile(
                    'asset/news_3.png',
                    '1 million dose of vaccine \nare on it\'s way.',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  NewsTile(
                    'asset/news_4.png',
                    'Highest daily cases in \nover a month.',
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
