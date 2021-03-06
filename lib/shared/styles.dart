import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsletter_ui/shared/colors.dart';

Decoration topCircularDecoration = BoxDecoration(
  color: Colors.white60,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(40),
    topRight: Radius.circular(40),
  ),
);

Decoration bottomCircularDecoration = BoxDecoration(
  color: Colors.white60,
  borderRadius: BorderRadius.only(
    bottomLeft: Radius.circular(20),
    bottomRight: Radius.circular(20),
  ),
);

Decoration fullyCircularDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.all(
    Radius.circular(20),
  ),
);

TextStyle headingStyle = GoogleFonts.sulphurPoint(
    fontSize: 32,
    fontWeight: FontWeight.normal,
    color: const Color(0xCC000000));

TextStyle captionStyle = GoogleFonts.montserrat(
  fontSize: 17,
  fontWeight: FontWeight.w300,
);

TextStyle titleStyle = GoogleFonts.sulphurPoint(
  wordSpacing: -5,
  fontSize: 26,
  fontWeight: FontWeight.normal,
);

TextStyle miniTitleStyle = GoogleFonts.sulphurPoint(
  wordSpacing: -5,
  fontSize: 20,
  fontWeight: FontWeight.normal,
);

TextStyle textStyle = GoogleFonts.montserrat(
  fontSize: 20,
  color: kcMediumGrey,
  fontWeight: FontWeight.normal,
);

TextStyle subTextStyle = GoogleFonts.openSans(
  fontSize: 13,
  fontWeight: FontWeight.w300,
);
