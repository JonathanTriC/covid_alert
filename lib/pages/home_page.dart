import 'package:covid_app/models/hospital_model.dart';
// import 'package:covid_app/pages/hospital_detail.dart';
import 'package:covid_app/pages/hospital_page.dart';
import 'package:covid_app/pages/newsfeed_page.dart';
import 'package:covid_app/pages/notification_page.dart';
import 'package:covid_app/pages/profile_page.dart';
import 'package:covid_app/pages/symptoms_page.dart';
import 'package:covid_app/theme.dart';
import 'package:covid_app/widgets/news_tile.dart';
import 'package:covid_app/widgets/service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Title
                Padding(
                  padding: EdgeInsets.only(
                    top: 22,
                    left: 24,
                    right: 24,
                    bottom: 22,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome Back',
                            style: titleTextStyle,
                          ),
                          Text(
                            'How you feeling today?',
                            style: bodyMediumTextStyle,
                          ),
                        ],
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
                      Container(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProfilePage(),
                              ),
                            );
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Image.asset(
                            'asset/profile_pic.png',
                            width: 44,
                            height: 44,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Banner
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 24,
                        right: 24,
                      ),
                      child: Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        child: Container(
                          decoration: BoxDecoration(
                            color: blueColor,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      child: Image.asset('asset/decor_left.png'),
                      height: 150,
                      left: 24,
                    ),
                    Positioned(
                      child: Image.asset('asset/decor_right.png'),
                      height: 150,
                      right: 24,
                    ),
                    Positioned(
                      child: Text(
                        'Send Alert For Emergency Help.',
                        style: headingTextStyle,
                      ),
                      width: 150,
                      top: 30,
                      left: 50,
                    ),
                    Positioned(
                      child: Container(
                        width: 130,
                        height: 40,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor: whiteColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          child: Text(
                            'Send Alert',
                            style: ctaTextStyle,
                          ),
                        ),
                      ),
                      top: 90,
                      left: 50,
                    ),
                    Positioned(
                      child: Image.asset('asset/illustration.png'),
                      height: 130,
                      right: 50,
                      top: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 22,
                ),

                // Important Service
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Important Service',
                        style: bodyBoldTextStyle,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),

                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Service(
                        'asset/registration_icon.png',
                        'Registration',
                      ),
                      Service(
                        'asset/result_icon.png',
                        'Result',
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HospitalPage(),
                            ),
                          );
                        },
                        child: Service(
                          'asset/hospital_icon.png',
                          'Hospitals',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Service(
                        'asset/statistic_icon.png',
                        'Statistics',
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SymptomsPage(),
                            ),
                          );
                        },
                        child: Service(
                          'asset/symptoms_icon.png',
                          'Symptoms',
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NewsfeedPage(),
                            ),
                          );
                        },
                        child: Service(
                          'asset/newsfeed_icon.png',
                          'Newsfeed',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 22,
                ),

                // Hospitals
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hospitals',
                        style: bodyBoldTextStyle,
                      ),
                      Text(
                        'View All',
                        style: labelTextStyle,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),

                Container(
                  height: 110,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                    ),
                    itemCount: hospitals.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(
                          right: 10,
                        ),
                        height: 110,
                        width: 297,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HospitalPage(),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                              right: 10,
                            ),
                            height: 110,
                            width: 297,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  child: Image.asset(
                                    hospitals[index].imageUrl!,
                                    height: 95,
                                  ),
                                  top: 8,
                                ),
                                Positioned(
                                  child: Text(
                                    hospitals[index].title!,
                                    style: hospitalNameTextStyle,
                                  ),
                                  top: 15,
                                  left: 100,
                                ),
                                Positioned(
                                  child: Text(
                                    'Cengkareng, Jakarta Barat',
                                    style: hospitalPlaceTextStyle,
                                  ),
                                  top: 33,
                                  left: 100,
                                ),
                                Positioned(
                                  child: Row(
                                    children: [
                                      Text(
                                        '4,5',
                                        style: hospitalNameTextStyle,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Image.asset(
                                        'asset/star_icon.png',
                                        width: 70,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '(60)',
                                        style: hospitalNameTextStyle,
                                      ),
                                    ],
                                  ),
                                  top: 53,
                                  left: 100,
                                ),
                                Positioned(
                                  child: Text(
                                    'Always Open',
                                    style: hospitalOpenTextStyle,
                                  ),
                                  top: 75,
                                  left: 100,
                                ),
                                Positioned(
                                  child: Image.asset(
                                    'asset/loc_icon.png',
                                    height: 30,
                                  ),
                                  right: 8,
                                  bottom: 7,
                                ),
                                Positioned(
                                  child: Image.asset(
                                    'asset/call_icon.png',
                                    height: 30,
                                  ),
                                  right: 45,
                                  bottom: 7,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),

                SizedBox(
                  height: 22,
                ),

                // News
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Newsfeed',
                        style: bodyBoldTextStyle,
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
                    ],
                  ),
                ),

                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
