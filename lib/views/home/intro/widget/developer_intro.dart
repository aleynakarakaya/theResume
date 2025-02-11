import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeveloperIntro extends StatelessWidget {
  final bool isBlack;
  const DeveloperIntro({super.key, required this.isBlack});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Hi! I\'m Aleyna,\na Software Developer',
      style: GoogleFonts.geologica(
        textStyle: TextStyle(
          color: isBlack ? Colors.black : Colors.white,
          fontSize: 38,
        ),
      ),
    );
  }
}
