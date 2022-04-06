import 'package:flutter/material.dart';
import 'package:portfolio_web/screens/responsive.dart';
import 'package:sizer/sizer.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
        mobile: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            profilePic(35, 30),
            details(context, 16, 22),
          ],
        ),
        desktop: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            details(context, 25, 35),
            profilePic(80, 40),
          ],
        ));

    /* SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          details(context),
          profilePic(),
        ],
      ),
    ); */
  }

  Container details(context, double? subHeadSize, double mainHeadSize) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      child: RichText(
        text: TextSpan(
            style: TextStyle(
              color: Colors.white,
              fontSize: subHeadSize,
            ),
            children: [
              const TextSpan(text: 'Hello! Myself\n'),
              TextSpan(
                  text: 'Muhammed Ameen\n',
                  style: TextStyle(
                    fontSize: mainHeadSize,
                    height: 2,
                  )),
              TextSpan(
                  text: ' \n',
                  style: TextStyle(
                    fontSize: mainHeadSize,
                    height: 2,
                  )),
              const TextSpan(
                text: 'I\'m a Flutter Freelancer based in Kerala, Currently I am pursuing my bachelors degree in Computer Science and Engineering at College of Egnineering Vadakara, ' +
                    'Along with the degree course I provide freelance service in building ' +
                    'Responsive mobile and website using flutter.',
              ),
            ]),
      ),
    );
  }

  SizedBox profilePic(double height, double width) {
    return SizedBox(
      height: height.h,
      width: width.w,
      child: Image.asset(
        'assets/profiledp3.png',
      ),
    );
  }
}
