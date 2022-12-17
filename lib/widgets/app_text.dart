import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  const AppText({
    Key? key,
    required this.text,
    this.color,
    this.textAlign,
    this.fontSize,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.poppins(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
