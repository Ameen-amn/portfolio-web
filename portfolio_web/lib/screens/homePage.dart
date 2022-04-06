import 'package:flutter/material.dart';
import 'package:portfolio_web/models/followIcon.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:portfolio_web/screens/aboutPage.dart';
import 'projectPage.dart';
import './mainPage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    setState(() {
      print(MediaQuery.of(context).size.width);
    });
    final PageController pageController = PageController(
      initialPage: 0,
    );
    bool more = false;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
        ),
        backgroundColor: const Color(0xfff121212),
        body: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(left: 100),
            child: PageView(
              controller: pageController,
              scrollDirection: Axis.vertical,
              children: [
                Introduction(),
                AboutPage(),
                ProjectPage(
                  title: 'Evy',
                  description:
                      'Evy aim to bridge the gap between EV drivers and the chargers by providing users comprehensive charger details, AI-powered trip planner, charging slots bookings, hassle-free online payment, and much more.',
                  projectImage: const [
                    'assets/Apple/evy0.png',
                    'assets/Apple/evy1.png',
                    'assets/Apple/evy2.png',
                  ],
                ),
                ProjectPage(
                  title: 'Posh Store',
                  description:
                      'This app is build for the aspiring traders who want to keep  track of thier trades and manage "risk"',
                  projectImage: const [
                    'assets/PoshStock/poshstock0.png',
                    'assets/PoshStock/poshstock1.png',
                    'assets/PoshStock/poshstock2.png',
                    'assets/PoshStock/poshstock3.png',
                    'assets/PoshStock/poshstock5.png',
                    'assets/PoshStock/poshstock6.png',
                    'assets/PoshStock/poshstock7.png',
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Follow Me",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FollowIcon(
                    icon: MdiIcons.linkedin,
                    url: 'https://www.linkedin.com/in/muhammed-ameen-90b6a4201',
                  ),
                  FollowIcon(
                    icon: MdiIcons.github,
                    url: 'https://github.com/Ameen-amn',
                  ),
                  FollowIcon(
                    icon: MdiIcons.instagram,
                    url: 'https://www.instagram.com/mhd__ameen/',
                  ),
                  FollowIcon(
                    icon: MdiIcons.email,
                    url: 'mailto:muhammedamn1@gmail.com',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
