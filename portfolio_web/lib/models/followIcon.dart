import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FollowIcon extends StatelessWidget {
  final IconData icon;
  final String url;
  FollowIcon({required this.icon, required this.url});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 6, 8, 16),
      child: IconButton(
        color: Colors.white,
        icon: Icon(
          icon,
          size: 25,
        ),
        onPressed: () {
          llaunch(url, context);
        },
      ),
    );
  }

  Future llaunch(String url, BuildContext context) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Can\'t launch'),
        ),
      );
    }
  }
}
