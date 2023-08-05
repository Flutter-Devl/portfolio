import 'package:flutter/material.dart';
import 'package:portfolio/common/constants.dart';

class SkillCard extends StatelessWidget {
  final String title;
  final String description;
  final double width;
  final double ratio;
  final String icon;

  const SkillCard({
    required this.title,
    required this.description,
    required this.icon,
    required this.width,
    required this.ratio,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = GoogleFont.style2;
    return Card(
      color: MyCustomColors.brightBackground,
      child: SizedBox(
        width: width * ratio,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: GoogleFont.style3),
                  const SizedBox(height: 20),
                  Text(description, style: textStyle),
                ],
              ),
            ),
            width >= Breakpoints.md
                ? Positioned(
                    top: 20,
                    right: 20,
                    width: 30,
                    height: 30,
                    child: Image.asset(icon),
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
