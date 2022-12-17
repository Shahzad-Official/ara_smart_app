import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_colors.dart';

class BackgroundScreen extends StatelessWidget {
  Widget child;
  BackgroundScreen({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.35,
                    color: AppColors.primaryColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0, top: 10),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40,
                            child: Image.asset("assets/dots.png"),
                          ),
                          Text(
                            "SMART MOBILE\nAPPLICATION",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.notoSerif(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.65,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: AppColors.primaryColor,
                    ),
                  ),
                  child: child,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
