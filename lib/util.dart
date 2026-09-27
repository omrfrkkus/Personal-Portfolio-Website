import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme createTextTheme(BuildContext context) {
  return GoogleFonts.montserratTextTheme(Theme.of(context).textTheme);
}
