import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/common/constants.dart';
import 'package:portfolio/widgets/navbar_buttons.dart';
import 'package:portfolio/widgets/navbar_icon.dart';
import 'package:portfolio/widgets/navbar_item.dart';

class NavBar extends StatelessWidget {
  final double width;
  final GlobalKey skillsKey;
  final ScrollController scrollController;
  late final RxDouble collapsableHeight;

  NavBar({
    required this.width,
    required this.skillsKey,
    required this.scrollController,
    Key? key,
  }) : super(key: key) {
    collapsableHeight = 0.0.obs;
  }

  void scrollToWidgetByKey(GlobalKey key) {
    RenderBox box = key.currentContext?.findRenderObject() as RenderBox;
    Offset position = box.localToGlobal(Offset.zero);
    double y = position.dy;
    scrollController.animateTo(
      y,
      duration: const Duration(milliseconds: 700),
      curve: Curves.easeInOut,
    );
  }

  void toggleCollapsableHeight() {
    collapsableHeight.value = (collapsableHeight.value == 0.0) ? 240.0 : 0.0;
  }

  @override
  Widget build(BuildContext context) {
    Widget navBarRow = Stack(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NavBarItem(
              text: 'Home',
              onTap: () {},
            ),
            NavBarItem(
              text: 'Skills',
              onTap: () => scrollToWidgetByKey(skillsKey),
            ),
            const SizedBox(width: 60),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(width: 50),
            Row(
              children: [
                NavBarItemWithIcon(
                  text: 'github',
                  icon: ImageAssetConstants.github,
                  url: '',
                ),
                SizedBox(width: 10),
                NavBarItemWithIcon(
                  text: 'linkedIn',
                  icon: ImageAssetConstants.linkedIn,
                  url: '',
                ),
                SizedBox(width: 50),
              ],
            )
          ],
        ),
      ],
    );

    List<Widget>? navBarColumn = [
      NavBarItem(
        text: 'Home',
        onTap: () {
          collapsableHeight.value = 0.0;
        },
      ),
      const SizedBox(width: 10),
      NavBarItem(
        text: 'Skills',
        onTap: () {
          scrollToWidgetByKey(skillsKey);
          collapsableHeight.value = 0.0;
        },
      ),
      const SizedBox(width: 10),
      NavBarItem(
        text: 'github',
        onTap: () {},
      ),
      NavBarItem(
        text: 'linkedIn',
        onTap: () {},
      ),
    ];

    return Stack(
      children: [
        ObxValue<RxDouble>(
          (data) => AnimatedContainer(
            margin: const EdgeInsets.only(top: 110.0),
            duration: const Duration(milliseconds: 375),
            curve: Curves.ease,
            height: data.value,
            width: double.infinity,
            decoration: const BoxDecoration(color: CustomColors.darkBackground),
            child: SingleChildScrollView(
              child: Column(children: navBarColumn),
            ),
          ),
          collapsableHeight,
        ),
        Container(
          height: 80.0,
          margin: const EdgeInsets.only(top: 40.0),
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: (width < Breakpoints.xlg)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NavBarButton(
                      onPressed: toggleCollapsableHeight,
                      width: width,
                    ),
                  ],
                )
              : navBarRow,
        ),
      ],
    );
  }
}
