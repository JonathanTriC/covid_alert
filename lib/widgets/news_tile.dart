import 'package:flutter/material.dart';
import 'package:covid_app/theme.dart';

class NewsTile extends StatelessWidget {
  final String imageUrl;
  final String title;

  NewsTile(this.imageUrl, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            height: 88,
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: titleTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Today, 21 July 2021',
                    style: barDisableTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Read more',
                    style: barActiveTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
