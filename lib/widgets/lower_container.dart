import 'package:flutter/material.dart';
import 'package:portfolio/common/constants.dart';
import 'package:portfolio/widgets/cards.dart';
import 'package:portfolio/widgets/header.dart';

class LowerContainer extends StatelessWidget {
  final double width;
  final GlobalKey skillsKey;

  const LowerContainer({
    Key? key,
    required this.width,
    required this.skillsKey,
  }) : super(key: key);

  Widget buildSkillCards() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SkillCard(
          title: 'Flutter Development',
          description:
              'Experienced Flutter developer with over 1 year of hands-on experience in creating cross-platform mobile applications. Proficient in Dart programming language and skilled in UI/UX design, integration of APIs, and state management using various Flutter packages. Strong problem-solving abilities and a passion for delivering high-quality, user-friendly applications.',
          icon: ImageAssetConstants.flutter,
          width: width,
          ratio: 0.35,
        ),
        const SizedBox(height: 10),
        SkillCard(
          title: 'Web Development',
          description:
              'Web developer with 1+ year of experience in designing and building responsive and user-friendly websites. Proficient in front-end technologies such as HTML, CSS, JavaScript, and jQuery, with a strong understanding of modern web development frameworks like React or Angular. Familiarity with back-end technologies, database management, and RESTful APIs. A detail-oriented and creative problem solver, dedicated to delivering high-quality web solutions.',
          icon: ImageAssetConstants.web,
          width: width,
          ratio: 0.35,
        ),
        const SizedBox(height: 10),
        SkillCard(
          title: 'Python Development',
          description:
              'Python developer with 1+ year of experience in developing and maintaining Python applications. Proficient in core Python concepts, object-oriented programming, and various Python libraries and frameworks. Skilled in database management, API integration, and collaborating in a team environment. Strong analytical and troubleshooting skills with a commitment to writing clean and efficient code.',
          icon: ImageAssetConstants.python,
          width: width,
          ratio: 0.35,
        ),
        const SizedBox(height: 30),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final bio = Bio(width: width, ratio: 0.3);

    return Container(
      width: width,
      key: skillsKey,
      color: CustomColors.darkBackground,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth >= Breakpoints.lg) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildSkillCards(),
                  SizedBox(width: 0.05 * width),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [bio],
                  )
                ],
              );
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildSkillCards(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30),
                      bio,
                    ],
                  ),
                ],
              );
            }
          }),
        ],
      ),
    );
  }
}
