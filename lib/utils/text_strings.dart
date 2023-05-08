

import 'package:flutter/material.dart';
import 'package:fundi_sawa/utils/colors.dart'as app_colors;
import 'package:flutter/cupertino.dart';
// onboarding text
const String tOnBoardingTitle1 = "Welcome To Fundisawa";
const String tOnBoardingTitle2 = "Find Your Service";
const String tOnBoardingTitle3 = "Book The Appointment";
const String tOnBoardingTitle4 = "Multiple Payment Options";
const String tOnBoardingSubTitle1 = "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.";
const String tOnBoardingSubTitle2 = "Find any services from plumbing to mama fua ";
const String tOnBoardingSubTitle3 = "Services available on demand";
const String tOnBoardingSubTitle4 = "You can pay using mpesa and any other payment of your choice";

const String tOnBoardingCounter1 = "1/4";
const String tOnBoardingCounter2 ="2/4";
const String tOnBoardingCounter3= "3/4";
const String tOnBoardingCounter4 ="4/4";


const mainTitle = TextStyle(
  fontFamily: 'Work Sans',
  fontSize: 22,
  fontWeight: FontWeight.w500,
  height: 1.23,
  letterSpacing: 0,
  color: Color(0xff1C1F34),
);

const subTitle = TextStyle(
  fontFamily: 'Work Sans',
  fontSize: 14,
  fontWeight: FontWeight.w500,
  height: 1.4,
  letterSpacing: 0,
  color: Color(0xff727272)
);

const orangeText = TextStyle(
  fontFamily: 'Work Sans',
  fontSize: 16,
  fontWeight: FontWeight.w500,
  height: 1.2, // line-height in Flutter is equivalent to height
  letterSpacing: 0,
  color: Color(0xFFF69522),
);

const italicOrangeText =TextStyle(
  fontFamily: 'Work Sans',
  fontStyle: FontStyle.italic,
  fontWeight: FontWeight.w600,
  fontSize: 14,
  height: 1.14,
  decoration: TextDecoration.underline,
  color: Color(0xFFF69522),
);


class ButtonStyleConstants {
  static const double buttonHeight = 45.0;
  static const double buttonWidth = 335.0;
  static const double borderRadius = 12.0;
  static const EdgeInsetsGeometry buttonPadding =
  EdgeInsets.symmetric(vertical: 13.0, horizontal: 10.0);
  static const Color primaryColor = Color(0xFFF69522);

  static final ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
    primary: primaryColor,
    padding: buttonPadding,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(borderRadius),
    ),
    minimumSize: Size(buttonWidth, buttonHeight),
  );
}