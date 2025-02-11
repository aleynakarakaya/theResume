import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResumeButton extends StatelessWidget {
  const ResumeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 120,
      decoration: BoxDecoration(
        color: Color(0xffF74C41),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          'Resume',
          style: GoogleFonts.geologica(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w200,
            ),
          ),
        ),
      ),
    );
  }
}
