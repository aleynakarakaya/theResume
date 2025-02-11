import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeveloperDescription extends StatelessWidget {
  final bool isBlack;
  const DeveloperDescription({super.key, required this.isBlack});

  @override
  Widget build(BuildContext context) {
    return Text(
      'I am a Flutter Developer who also contributes to backend development with Python.  In my current company, I am responsible for UI/UX design, development, and publishing of applications on app stores. In my free time, I improve myself in the field of artificial intelligence. Working in dynamic environments and developing professionally is always a priority for me.',
      style: GoogleFonts.geologica(
        textStyle: TextStyle(
          color: isBlack ? Colors.black : Colors.white,
          fontWeight: FontWeight.w100,
          fontSize: 16,
        ),
      ),
    );
  }
}
