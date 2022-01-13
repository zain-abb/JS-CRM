import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData(
    primaryColor: const Color(0xFF2F6BC1),
    errorColor: Colors.redAccent,
    canvasColor: Colors.grey,
    scaffoldBackgroundColor: const Color(0xFFF2F2F4),
    colorScheme: ColorScheme.fromSwatch(
      accentColor: const Color(0xFFF3944D),
      errorColor: Colors.red,
    ),
    textTheme: TextTheme(
      headline1: GoogleFonts.montserrat(
        color: const Color(0xFF2F6BC1),
        fontSize: 97.sp,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
      ),
      headline2: GoogleFonts.montserrat(
        color: const Color(0xFF2F6BC1),
        fontSize: 61.sp,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
      ),
      headline3: GoogleFonts.montserrat(
        color: const Color(0xFF2F6BC1),
        fontSize: 48.sp,
        fontWeight: FontWeight.w400,
      ),
      headline4: GoogleFonts.montserrat(
        color: const Color(0xFF2F6BC1),
        fontSize: 34.sp,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      headline5: GoogleFonts.montserrat(
        color: const Color(0xFF2F6BC1),
        fontSize: 24.sp,
        fontWeight: FontWeight.w400,
      ),
      headline6: GoogleFonts.montserrat(
        color: const Color(0xFFF3944D),
        fontSize: 20.sp,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
      ),
      subtitle1: GoogleFonts.montserrat(
        color: const Color(0xFFF3944D),
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
      ),
      subtitle2: GoogleFonts.montserrat(
        color: const Color(0xFFF3944D),
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
      ),
      bodyText1: GoogleFonts.openSans(
        color: const Color(0xFF16161D),
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
      ),
      bodyText2: GoogleFonts.openSans(
        color: const Color(0xFF16161D),
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      button: GoogleFonts.montserrat(
        color: Colors.white,
        fontSize: 16.sp,
        fontWeight: FontWeight.w700,
        letterSpacing: 1.25,
      ),
      caption: GoogleFonts.openSans(
        color: Colors.grey,
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
      ),
      overline: GoogleFonts.openSans(
        color: Colors.grey,
        fontSize: 10.sp,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5,
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(
      selectionColor: const Color(0xFF2F6BC1).withOpacity(0.4),
      selectionHandleColor: const Color(0xFF2F6BC1),
      cursorColor: const Color(0xFF2F6BC1),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xFFF1F1F1),
      hintStyle: const TextStyle(color: Colors.grey),
      floatingLabelStyle: const TextStyle(color: Colors.black38),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: const BorderSide(),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide(
          color: Colors.grey.withOpacity(0.3),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide(
          color: Colors.grey.withOpacity(0.3),
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: const BorderSide(
          color: Colors.redAccent,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: const BorderSide(
          color: Colors.redAccent,
        ),
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.all<Color>(const Color(0xFF2F6BC1)),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(3.r),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF2F6BC1)),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        minimumSize: MaterialStateProperty.all<Size>(Size(400.w, 50.h)),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
      ),
    ),
  );
}
