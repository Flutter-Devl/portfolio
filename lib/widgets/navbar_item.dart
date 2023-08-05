import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/common/constants.dart';

class NavBarItem extends StatelessWidget {
  final String text;
  final Function onTap;
  final RxBool isHighlighted = false.obs;

  NavBarItem({required this.text, required this.onTap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (_) => isHighlighted.value = true,
      onExit: (_) => isHighlighted.value = false,
      child: GestureDetector(
        onTap: () => onTap(),
        child: Container(
          height: 40.0,
          width: 50,
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 6),
              Text(
                text,
                style: TextStyle(
                  fontSize: 16.0,
                  color: isHighlighted.value
                      ? MyCustomColors.primary
                      : Colors.white,
                ),
              ),
              const SizedBox(height: 6),
              if (isHighlighted.value)
                Container(width: 40, height: 1, color: MyCustomColors.primary),
            ],
          ),
        ),
      ),
    );
  }
}
