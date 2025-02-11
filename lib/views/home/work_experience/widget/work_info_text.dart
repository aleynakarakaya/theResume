import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkInfoText extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final double? fontSize;
  const WorkInfoText({super.key, required this.text, this.fontWeight, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.geologica(
          textStyle: TextStyle(
            color: Colors.black,
            fontWeight: fontWeight ?? FontWeight.w300,
            fontSize: fontSize ?? 13,
          ),
        ),
        overflow: TextOverflow.ellipsis);
  }
}
