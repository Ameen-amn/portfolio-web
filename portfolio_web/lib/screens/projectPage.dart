// ignore: file_names
import 'package:flutter/material.dart';
import 'package:portfolio_web/screens/responsive.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProjectPage extends StatefulWidget {
  final String title;
  final String description;
  final List<String> projectImage;
  ProjectPage(
      {required this.title,
      required this.description,
      required this.projectImage});

  @override
  State<ProjectPage> createState() => _EvyPageState();
}

class _EvyPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mobile: Column(
        children: [
          projectImage(),
          projectTitle(context, 25, 18),
        ],
      ),
      desktop: Row(
        children: [
          projectTitle(context, 35, 22),
          projectImage(),
        ],
      ),
    );
  }

  Expanded projectImage() {
    return Expanded(
      child: CarouselSlider(
          items: widget.projectImage.map((imageUrl) {
            return Builder(builder: (BuildContext context) {
              return Container(
                width: 500,
                height: 500,
                child: Image.asset(imageUrl),
              );
            });
          }).toList(),
          options: CarouselOptions(
            autoPlay: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 600),
            height: 500,
            initialPage: 0,
          )),
    );
  }

  Column projectTitle(
      BuildContext context, double mainHeadingSize, double subHeadingSize) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(0, 26, 26, 0),
          width: MediaQuery.of(context).size.width * 0.3,
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: widget.title + "\n",
                  style: TextStyle(
                    fontSize: mainHeadingSize,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: " \n",
                  style: TextStyle(
                    height: 1.8,
                  ),
                ),
                TextSpan(
                  text: widget.description + "\n",
                  style: TextStyle(
                    fontSize: subHeadingSize,
                    color: Colors.white,
                    height: 1.1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
