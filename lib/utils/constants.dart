import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// import '../screens/Registre/registre.dart';

int? nomode;

class Constant {
  static Color primaryColor = Color(0xFF00319E);
  static Color secondaryColor = Color(0xFF667080);
  static Color errorcolor = Color(0xFFF0810F);
  static Color blackcolor = Color(0xFF000000);
  static Color whitecolor = Color(0xFFFFFFFF);
  static Color redcolor = Color(0xFFDC2626);
  static Color redlightcolor = Color(0xFFFEF2F2);
  static Color greylightycolor = Color(0xFFF4F4F5);
  static Color darkgreycolor = Color(0xFF3a3b3c);
  static Color blueIcon = Color(0xFF3B82F6);
  static Color blueIcondesactivate = Color(0xFFBAC5DD);
  static Color pinputerrorcolor = Color(0xFFFEE2E2);
  static Color redSuprice = Color(0xFFDC2626);
}

const textstyle =
    TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black);

// const primaryColor = Color(0xFF00319E);
// const secondaryColor = Color(0xFF667080);
// const Constant.errorcolor = Color(0xFFF0810F);
// const Constant.blackcolor = Color(0xFF000000); //Constant.blackcolor //Constant.greylightycolor
// const Constant.whitecolor = Color(0xFFFFFFFF); //Constant.whitecolor //Constant.darkgreycolor
// const Constant.redcolor = Color(0xFFDC2626);
// const Constant.redlightcolor = Color(0xFFFEF2F2);
// const Constant.greylightycolor = Color(0xFFF4F4F5); //Constant.greylightycolor // Constant.blackcolor
// const Constant.darkgreycolor = Color(0xFF52525B); //Constant.darkgreycolor //Constant.whitecolor
// const Constant.blueIcon = Color(0xFF3B82F6);
// const Constant.blueIcondesactivate = Color(0xFFBAC5DD);
// const Constant.pinputerrorcolor=Color(0xFFFEE2E2);
// const Constant.redSuprice = Color(0xFFDC2626);
// const textstyle = TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Colors.black);

String token = '';
String tokenV = '';
Widget spaceHeight(double height) {
  return SizedBox(height: height);
}

Widget spaceWidth(double width) {
  return SizedBox(width: width);
}
