import 'package:covid_app/widgets/common_symptoms.dart';
import 'package:flutter/material.dart';
import 'package:covid_app/theme.dart';

class HospitalDetail2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Image.asset(
                'asset/hospital_details2.png',
                width: MediaQuery.of(context).size.width,
                height: 450,
                fit: BoxFit.cover,
              ),
              ListView(
                children: [
                  SizedBox(
                    height: 400,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(30),
                      ),
                      color: whiteColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Container(
                            width: 40,
                            height: 5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: blackColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        CommonSymptoms(
                          'Always Open',
                        ),
                        Text(
                          'Rumah Sakit Lawan Covid',
                          style: titleTextStyle.copyWith(
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Color(0xffCCCCCC),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              'Cengkareng, Jakarta Barat',
                              style: bodyMediumTextStyle.copyWith(
                                color: Color(0xffCCCCCC),
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
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
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Contact your doctor or clinic right away if you have COVID-19 symptoms, you\'ve been exposed to someone with COVID-19 or you live in or have traveled.',
                          style: bodyMediumTextStyle.copyWith(
                            color: Color(0xffCCCCCC),
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 150,
                              height: 40,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: blueColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                                child: Text(
                                  'Call Hospital',
                                  style: ctaTextStyle.copyWith(
                                    color: whiteColor,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 150,
                              height: 40,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Color(0xffEEEEEE),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                                child: Text(
                                  'Direction',
                                  style: ctaTextStyle,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 45,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
