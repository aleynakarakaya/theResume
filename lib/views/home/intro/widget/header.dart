import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'aleyna ayca karakaya',
      style: GoogleFonts.comfortaa(
        textStyle: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}
