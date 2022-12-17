import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_colors.dart';
import 'app_text.dart';

class CustomButton extends StatelessWidget {
  String text, num;
  double height;
  double width;
  final double? fontSize;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  void Function()? onTap;
  CustomButton({
    Key? key,
    required this.text,
    required this.num,
    required this.height,
    required this.width,
    this.textAlign,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: AppText(
                  text: num,
                  color: AppColors.primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              text,
              textAlign: textAlign,
              style: GoogleFonts.notoSerif(
                fontSize: fontSize,
                fontWeight: fontWeight,
                color: color,
              ),
            )
          ],
        ),
      ),
    );
  }
}
