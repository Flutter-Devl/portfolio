import 'package:flutter/material.dart';
import 'package:portfolio/common/constants.dart';
import 'package:portfolio/widgets/profile_description.dart';

class UpperContainer extends StatelessWidget {
  final double width;
  const UpperContainer({required this.width, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      color: MyCustomColors.brightBackground,
      padding: const EdgeInsets.only(bottom: 20),
      child: LayoutBuilder(builder: (context, constraints) {
        bool isLargeScreen = constraints.maxWidth >= Breakpoints.lg;
        bool isMediumScreen = constraints.maxWidth < Breakpoints.lg &&
            constraints.maxWidth >= Breakpoints.md;

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: isLargeScreen ? width * 0.02 : width * 0.07),
            SizedBox(height: isMediumScreen ? 0.05 * width : width * 0.07),
            Description(isVertical: !isLargeScreen, width: width),
          ],
        );
      }),
    );
  }
}
