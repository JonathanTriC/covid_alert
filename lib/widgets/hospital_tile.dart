import 'package:flutter/material.dart';
import 'package:covid_app/theme.dart';


class HospitalTile extends StatelessWidget {
  final String imageUrl;
  final String title;

  HospitalTile(this.imageUrl, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              imageUrl,
              height: 95,
            ),
            top: 8,
          ),
          Positioned(
            child: Text(
              title,
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
    );
  }
}
