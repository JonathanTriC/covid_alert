import 'package:covid_app/pages/notification_page.dart';
import 'package:covid_app/widgets/statistic_tile.dart';
import 'package:flutter/material.dart';
import 'package:covid_app/theme.dart';

class StatisticsPage extends StatelessWidget {
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
                    Text(
                      'Statistics',
                      style: titleTextStyle,
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
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 35,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: blueColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 25,
                          ),
                        ),
                        child: Text(
                          'Today',
                          style: ctaTextStyle.copyWith(
                            color: whiteColor,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 35,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.grey[200],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 25,
                          ),
                        ),
                        child: Text(
                          'Yesterday',
                          style: ctaTextStyle.copyWith(
                            color: blackColor,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 35,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.grey[200],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 25,
                          ),
                        ),
                        child: Text(
                          'Week',
                          style: ctaTextStyle.copyWith(
                            color: blackColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    StatisticTile(
                      'asset/statistic_total.png',
                      'Total Cases',
                      '295.499',
                    ),
                    StatisticTile(
                      'asset/statistic_active.png',
                      'Active Cases',
                      '85.499',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    StatisticTile(
                      'asset/statistic_recover.png',
                      'Recovered',
                      '125.689',
                    ),
                    StatisticTile(
                      'asset/statistic_death.png',
                      'Death',
                      '65.329',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top Country',
                      style: bodyBoldTextStyle.copyWith(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'View All',
                      style: labelTextStyle,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Image.asset(
                        'asset/china.png',
                        height: 40,
                      ),
                      title: Text(
                        'China',
                        style: titleTextStyle.copyWith(
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      trailing: Text(
                        '81.054',
                        style: titleTextStyle.copyWith(
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Image.asset(
                        'asset/italy.png',
                        height: 40,
                      ),
                      title: Text(
                        'Italy',
                        style: titleTextStyle.copyWith(
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      trailing: Text(
                        '59.138',
                        style: titleTextStyle.copyWith(
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
