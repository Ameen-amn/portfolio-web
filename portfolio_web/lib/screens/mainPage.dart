import 'dart:math';

import 'package:flutter/material.dart';
import 'package:portfolio_web/screens/responsive.dart';
import 'package:sizer/sizer.dart';

class Introduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScrollController cont = ScrollController();
    double width = MediaQuery.of(context).size.width;
    return ResponsiveWidget(
        mobile: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            introductionImage(context),
            introduction(context),
          ],
        ),
        desktop: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            introduction(context),
            introductionImage(context),
            Column(
              children: [Image.asset('assets/icons/Arrow 1.png')],
            )
          ],
        ));
  }

  Image introductionImage(context) {
    double width = MediaQuery.of(context).size.width;

    return Image.asset(
      'assets/sammy.png',
      height: width < 700 ? 40.h : 150.h,
      width: width < 700 ? 40.w : 80.h,
    );
  }

  Container introduction(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      child: RichText(
        text: const TextSpan(
          children: [
            TextSpan(
              text: "Hey! I'm\n",
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  overflow: TextOverflow.ellipsis),
            ),
            TextSpan(
              text: "Muhammed Ameen\n",
              style: TextStyle(
                fontSize: 45,
                color: Colors.white,
                height: 1.8,
              ),
            ),
            TextSpan(
              text: 'An aspiring Flutter Developer\n' +
                  'Currently does freelancing work in flutter',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
