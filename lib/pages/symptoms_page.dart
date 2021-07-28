import 'package:covid_app/pages/prevention_page.dart';
import 'package:covid_app/pages/symptoms_detail2_page.dart';
import 'package:covid_app/pages/symptoms_detail3_page.dart';
import 'package:covid_app/pages/symptoms_detail4_page.dart';
import 'package:covid_app/pages/symptoms_detail_page.dart';
import 'package:covid_app/widgets/symptoms.dart';
import 'package:flutter/material.dart';
import 'package:covid_app/theme.dart';

import 'notification_page.dart';

class SymptomsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                  'Symptoms',
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
                  'Are You Feeling Sick? Check Prevention!.',
                  style: headingTextStyle,
                ),
                width: 200,
                top: 30,
                left: 50,
              ),
              Positioned(
                child: Container(
                  width: 130,
                  height: 40,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PreventionPage(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: whiteColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    child: Text(
                      'Prevention',
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
                right: 40,
                top: 20,
              ),
            ],
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
                  'Symptoms',
                  style: titleTextStyle.copyWith(
                    fontSize: 22,
                  ),
                ),
                Text(
                  'View All',
                  style: ctaTextStyle,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 55,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SymptomsDetailPage(),
                      ),
                    );
                  },
                  child: Symptoms(
                    'asset/cough.png',
                    'Dry Cough',
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
                        builder: (context) => SymptomsDetail2Page(),
                      ),
                    );
                  },
                  child: Symptoms(
                    'asset/fever.png',
                    'High Fever',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 55,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SymptomsDetail3Page(),
                      ),
                    );
                  },
                  child: Symptoms(
                    'asset/breathing.png',
                    'Breathing',
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
                        builder: (context) => SymptomsDetail4Page(),
                      ),
                    );
                  },
                  child: Symptoms(
                    'asset/headcahe.png',
                    'Headache',
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
