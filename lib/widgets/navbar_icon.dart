import 'package:flutter/material.dart';
import 'package:portfolio/common/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class NavBarItemWithIcon extends StatelessWidget {
  final String text;
  final String icon;
  final String url;

  const NavBarItemWithIcon(
      {required this.text, required this.icon, required this.url, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ButtonStyle(
          elevation: MaterialStateProperty.all<double>(0),
          backgroundColor: MaterialStateProperty.all<Color>(
              MyCustomColors.brightBackground)),
      icon: Image.asset(icon),
      onPressed: () async {
        await launchUrl(Uri.parse(url));
      },
      label: Text(text, style: const TextStyle(fontSize: 16)),
    );
  }
}
