import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTitle extends StatelessWidget {
  final String text;
  final double? verticalPadding;
  const CustomTitle({super.key, required this.text, this.verticalPadding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: verticalPadding ?? 10.0),
      child: Text(
        text,
        style: GoogleFonts.geologica(
          textStyle: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
    );
  }
}
