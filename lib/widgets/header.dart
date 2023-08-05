import 'package:flutter/material.dart';
import 'package:portfolio/common/constants.dart';

class Bio extends StatelessWidget {
  final double width;
  final double ratio;

  const Bio({super.key, required this.width, required this.ratio});

  @override
  Widget build(BuildContext context) {
    final textStyle = GoogleFont.style4;

    return Container(
      constraints: BoxConstraints(maxWidth: width * ratio),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Hello!  I’m Mehsara Irfan', style: textStyle),
          const SizedBox(height: 5),
          Text(
            'To build up a challenging career in the field of engineering through diligence and hard work with a prestigious organization where I can prove myself as a dynamic personality and team member. To be part of such an organization where my skills could make maximum contribution to the success of the organization. As well as enhance my capabilities by working in a competitive environment, so that I am capable of delivering the best for my employer. Seeking a position where experience and professionalism are valued and required.',
            style: GoogleFont.style5,
          ),
        ],
      ),
    );
  }
}
