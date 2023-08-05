import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/common/constants.dart';

class Footer extends StatelessWidget {
  final double width;
  final ScrollController scrollController;

  const Footer({required this.width, required this.scrollController, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = GoogleFonts.getFont('Delius',
        color: CustomColors.gray, fontSize: 14);

    return Container(
      color: CustomColors.darkBackground,
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 22),
          width > Breakpoints.sm
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Copyright © 2023 ', style: textStyle),
                    Text('All rights reserved', style: textStyle),
                    Text('example@gmail.com', style: textStyle),
                  ],
                )
              : Column(
                  children: [
                    Text('Copyright © 2023', style: textStyle),
                    const SizedBox(height: 10),
                    Text('All rights reserved', style: textStyle),
                    const SizedBox(height: 10),
                    Text('example@gmail.com', style: textStyle),
                  ],
                ),
        ],
      ),
    );
  }
}
