import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText {
  static Widget Heading(
      {@required text, color, textAlign, textOverflow, size}) {
    TextStyle textStyle = GoogleFonts.raleway(
      fontSize: size,
      fontWeight: FontWeight.w700,
      color: color,
    );
    return Text(
      text,
      style: textStyle,
      textAlign: textAlign,
      overflow: textOverflow,
    );
  }

  static Widget SubHeading(
      {@required text, color, textAlign, textOverflow, size, fontStyle}) {
    TextStyle textStyle = GoogleFonts.raleway(
      fontSize: size,
      fontWeight: FontWeight.w600,
      fontStyle: fontStyle ?? FontStyle.normal,
      color: color,
    );
    return Text(
      text,
      style: textStyle,
      textAlign: textAlign,
      overflow: textOverflow,
    );
  }

  static Widget SubHeadingS(
      {@required text,
      color,
      textAlign,
      textOverflow,
      size,
      decoration,
      fontStyle}) {
    TextStyle textStyle = GoogleFonts.raleway(
        fontSize: size,
        //letterSpacing: 3.5,
        fontWeight: FontWeight.w400,
        fontStyle: fontStyle ?? FontStyle.normal,
        color: color ?? Colors.black,
        decoration: TextDecoration.none ?? decoration);
    return Text(
      text,
      style: textStyle,
      textAlign: textAlign,
      overflow: textOverflow,
    );
  }

  static Widget Content(
      {@required text,
      color,
      textAlign,
      textOverflow,
      size,
      decoration,
      fontStyle,
      fontWeight,
      decorationColor}) {
    TextStyle textStyle = GoogleFonts.openSans(
      fontSize: size,
      fontWeight: fontWeight ?? FontWeight.w500,
      fontStyle: fontStyle ?? FontStyle.normal,
      color: color,
      decoration: decoration ?? TextDecoration.none,
      decorationColor: decorationColor ?? Colors.white,
      height: 1.5,
    );
    return Text(
      text,
      style: textStyle,
      textAlign: textAlign,
      overflow: textOverflow,
    );
  }

  static Widget SubContent(
      {@required text,
      color = Colors.blueGrey,
      textAlign,
      textOverflow,
      size,
      fontStyle,
      style}) {
    TextStyle textStyle = GoogleFonts.openSans(
      textStyle: style,
      fontSize: size,
      fontWeight: FontWeight.w400,
      color: color,
      fontStyle: fontStyle ?? FontStyle.normal,
    );
    return Text(
      text,
      style: textStyle,
      textAlign: textAlign,
      overflow: textOverflow,
    );
  }

  static Widget ContentB(
      {@required text, color, textAlign, textOverflow, size}) {
    TextStyle textStyle = GoogleFonts.openSans(
      fontSize: size,
      fontWeight: FontWeight.w600,
      color: color ?? Colors.black,
    );
    return Text(
      text,
      style: textStyle,
      textAlign: textAlign,
      overflow: textOverflow,
    );
  }

  static Widget ButtonText(
      {@required text, color, textAlign, textOverflow, size}) {
    TextStyle textStyle = GoogleFonts.raleway(
      fontSize: size,
      fontWeight: FontWeight.w600,
      color: color,
    );
    return Text(
      text,
      style: textStyle,
      textAlign: textAlign,
      overflow: textOverflow,
    );
  }

  static TextStyle SubHeadingStyle({color, size, fontStyle, fontWeight}) {
    return GoogleFonts.raleway(
      fontSize: size,
      fontWeight: fontWeight ?? FontWeight.w600,
      fontStyle: fontStyle ?? FontStyle.normal,
      color: color,
    );
  }

  static TextStyle ContentStyle(
      {color, size, fontStyle, fontWeight, TextDecoration decoration}) {
    return GoogleFonts.openSans(
        fontSize: size,
        fontWeight: fontWeight ?? FontWeight.w500,
        fontStyle: fontStyle ?? FontStyle.normal,
        color: color,
        decoration: decoration);
  }
}
