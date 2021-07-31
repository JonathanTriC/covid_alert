import 'package:covid_app/pages/home_page.dart';
import 'package:covid_app/theme.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('asset/404.png'),
            Container(
              height: 50,
              width: 250,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: TextButton.styleFrom(
                  backgroundColor: blueColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Back To Home',
                  style: ctaTextStyle.copyWith(
                    color: whiteColor,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
