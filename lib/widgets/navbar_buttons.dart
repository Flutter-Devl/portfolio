import 'package:flutter/material.dart';
import 'package:portfolio/common/constants.dart';

class NavBarButton extends StatelessWidget {
  final Function onPressed;
  final double width;

  const NavBarButton({super.key, required this.width, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final padding = width >= Breakpoints.md ? 0.03 * width : 0.03 * 762;

    return ElevatedButton(
      onPressed: () => onPressed(),
      style: ElevatedButton.styleFrom(
        elevation: 4.0,
        shape: const CircleBorder(),
        padding: EdgeInsets.all(padding),
        backgroundColor: CustomColors.darkBackground,
        foregroundColor: CustomColors.brightBackground,
      ),
      child: const Icon(Icons.menu, color: Colors.white),
    );
  }
}
