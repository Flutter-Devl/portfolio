import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/common/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Description extends StatelessWidget {
  final bool isVertical;
  final double width;
  const Description({required this.isVertical, required this.width, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isVertical ? double.infinity : width * 0.29,
      child: Column(
        crossAxisAlignment:
            isVertical ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: 200,
            height: 40,
            alignment: Alignment.center,
            color: CustomColors.primary,
            child: Center(
              child: Text(
                'Mobile Application Developer',
                style: GoogleFonts.getFont('Days One',
                    color: Colors.black, fontSize: 10),
              ),
            ),
          ),
          SizedBox(height: 0.015 * width),
          SizedBox(
            width: isVertical ? double.infinity : width * 0.29,
            height: 90,
            child: AnimatedTextKit(
              repeatForever: true,
              pause: const Duration(seconds: 2),
              animatedTexts: [
                TyperAnimatedText(
                  "Designing solutions,\nCoding dreams.",
                  textAlign: isVertical ? TextAlign.center : TextAlign.start,
                  textStyle: GoogleFonts.getFont(
                    'Delius',
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
