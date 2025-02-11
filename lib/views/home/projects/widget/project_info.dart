
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectInfo extends StatelessWidget {
  final String title;
  final String description;
  final CrossAxisAlignment? crossAxisAlignment;
  final TextAlign? textAlign;
  const ProjectInfo({
    super.key,
    required this.title,
    required this.description, this.crossAxisAlignment, this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment ??  CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.geologica(
            textStyle: const TextStyle(color: Color(0xff949494), fontSize: 18),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          description,
          style: GoogleFonts.geologica(
            textStyle: const TextStyle(fontWeight: FontWeight.w100, fontSize: 16,)
          ),
          textAlign: textAlign,
        ),
      ],
    );
  }
}
