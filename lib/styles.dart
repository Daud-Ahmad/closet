import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const cDirtyBlue = Color(0xFF387b96);
const cAppointmentCalendarDay = Color(0xFF212121);
const cGray = Colors.grey;

abstract class TextStyles {
  static const TextStyle standard = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 1.0),
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle standardGray = TextStyle(
    color: cGray,
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle standardDirtyBlueColor = TextStyle(
    color: cDirtyBlue,
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle standard20DirtyBlueColor = TextStyle(
    color: cDirtyBlue,
    fontSize: 20,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle bigHeadline = TextStyle(
    color: Color.fromRGBO(56, 123, 150, 1.0),
    fontSize: 50,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle headline = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontSize: 24,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle subHeadline = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.4),
    fontSize: 18,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle small = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 1.0),
    fontSize: 12,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle appointmentCalendarDay = TextStyle(
    color: cDirtyBlue,
    fontSize: 12,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle appointmentCalendarDaySelected = TextStyle(
    color: Colors.white,
    fontSize: 12,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle appointmentCalendarDate = TextStyle(
    color: cDirtyBlue,
    fontSize: 15.0,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle appointmentCalendarDateSelected = TextStyle(
    color: Colors.white,
    fontSize: 15.0,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle standardWhite = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle normalWhite = TextStyle(
    color: Colors.white,
    fontSize: 12,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle normalDirtyBlueColor = TextStyle(
    color: cDirtyBlue,
    fontSize: 12,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

}

TextStyle colouredText(TextStyle style, {color}) {
  return TextStyle(
    color: color,
    fontSize: style.fontSize,
    fontStyle: style.fontStyle,
    fontWeight: style.fontWeight,
  );
}

abstract class InputStyles {
  static InputDecoration genInput({hint, icon, suffixIcon}) {
    return InputDecoration(
      enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        borderSide: BorderSide(
          color: Color.fromRGBO(0x6b, 0xaa, 0xc7, 1.0),
          width: 1.0,
        ),
      ),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
      ),
      hintText: hint,
      prefixIcon: Icon(icon),
      suffixIcon: suffixIcon,
    );
  }


  static InputDecoration getAuthInput({hint, icon, suffixIcon}) {
    return InputDecoration(
      enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        borderSide: BorderSide(
          color: Color.fromRGBO(0x6b, 0xaa, 0xc7, 1.0),
          width: 1.0,
        ),
      ),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
      ),
      hintText: hint,
      // labelText: hint,
      prefixIcon: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
        child: Image.asset(icon, height: 30,),
      ),
      suffixIcon: suffixIcon,
      contentPadding: const EdgeInsets.symmetric(vertical: 17)
    );
  }
}
