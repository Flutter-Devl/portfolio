import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Breakpoints {
  static const int xlg = 950;
  static const int lg = 860;
  static const int md = 635;
  static const int sm = 500;
  static const int floatingButton = 50;
}

class MyCustomColors {
  static const Color brightBackground = Color.fromARGB(255, 13, 14, 16);
  static const Color darkBackground = Color.fromARGB(255, 55, 59, 67);
  static const Color imageCircleBackground = Color(0xff28292D);
  static const Color primary = Color.fromARGB(255, 220, 211, 117);
  static const Color secondary = Color(0xffDF504A);
  static const Color purple = Color(0xff5F70F9);
  static const Color gray = Color(0xffD3D3D3);
}

class ImageAsset {
  static const String web = 'assets/images/web.png';
  static const String github = 'assets/images/github.png';
  static const String linkedIn = 'assets/images/linkedIn.png';
  static const String flutter = 'assets/images/flutter.png';
  static const String pythonCircle = 'assets/images/python_circle.png';
  static const String python = 'assets/images/python.png';
}

class GoogleFont {
  static var style1 =
      GoogleFonts.getFont('Delius', color: MyCustomColors.gray, fontSize: 14);
  static var style2 =
      GoogleFonts.getFont('Delius', color: MyCustomColors.gray, fontSize: 12);
  static var style3 = GoogleFonts.getFont('Delius',
      color: MyCustomColors.primary, fontSize: 16);
  static var style4 =
      GoogleFonts.getFont('Delius', color: Colors.white, fontSize: 26);
  static var style5 =
      GoogleFonts.getFont('Delius', color: MyCustomColors.gray, fontSize: 16);
  static var style6 =
      GoogleFonts.getFont('Days One', color: Colors.black, fontSize: 10);
  static var style7 =
      GoogleFonts.getFont('Delius', color: Colors.white, fontSize: 30);
}
