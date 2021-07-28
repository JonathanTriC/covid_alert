import 'package:covid_app/pages/notification_page.dart';
import 'package:covid_app/widgets/common_symptoms.dart';
import 'package:flutter/material.dart';
import 'package:covid_app/theme.dart';

class SymptomsDetail3Page extends StatelessWidget {
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
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Text(
                'Heavy Breathing',
                style: titleTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  'Heavy breathing when you’re not moving is a sign that your body has to work harder to get enough oxygen. This may be because less air is getting in through your nose and mouth, or too little oxygen is making its way into your bloodstream.',
                  style: bodyMediumTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Image.asset(
                'asset/difficulty_breathing.png',
                height: 200,
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Text(
                'Common Symptoms',
                style: titleTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CommonSymptoms(
                          'Fever',
                        ),
                        CommonSymptoms(
                          'Tiredness',
                        ),
                        CommonSymptoms(
                          'Cough',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CommonSymptoms(
                          'Sore Throat',
                        ),
                        CommonSymptoms(
                          'Headache',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CommonSymptoms(
                          'Breathing',
                        ),
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
