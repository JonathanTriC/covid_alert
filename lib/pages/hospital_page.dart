import 'package:covid_app/pages/hospital_detail.dart';
import 'package:covid_app/pages/hospital_detail2.dart';
import 'package:covid_app/pages/hospital_detail3.dart';
import 'package:covid_app/pages/hospital_detail4.dart';
import 'package:covid_app/pages/hospital_detail5.dart';
import 'package:covid_app/pages/notification_page.dart';
import 'package:covid_app/widgets/hospital_tile.dart';
import 'package:flutter/material.dart';
import 'package:covid_app/theme.dart';

class HospitalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: SafeArea(
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
                      'Hospitals',
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
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    color: Color(0xffEEEEEE),
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Color(0xff727F8D),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Search Hospital',
                          style: bodyMediumTextStyle,
                        )
                      ],
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
                  vertical: 10,
                ),
                child: Column(
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HospitalDetailPage(),
                          ),
                        );
                      },
                      child: HospitalTile(
                        'asset/hospital_pic1.png',
                        'RS Jaya Abadi',
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
                            builder: (context) => HospitalDetail2Page(),
                          ),
                        );
                      },
                      child: HospitalTile(
                        'asset/hospital_pic2.png',
                        'RS Lawan Covid',
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
                            builder: (context) => HospitalDetail3Page(),
                          ),
                        );
                      },
                      child: HospitalTile(
                        'asset/hospital_pic3.png',
                        'RS Lekas Sembuh',
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
                            builder: (context) => HospitalDetail4Page(),
                          ),
                        );
                      },
                      child: HospitalTile(
                        'asset/hospital_pic4.png',
                        'RS Ir. Soekarno',
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
                            builder: (context) => HospitalDetail5Page(),
                          ),
                        );
                      },
                      child: HospitalTile(
                        'asset/hospital_pic5.png',
                        'RS Sumber Waras',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
