import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PercentageBar extends StatelessWidget {
  final String title;
  final bool isFromEnd;
  final double barWidth;
  const PercentageBar({
    super.key,
    required this.isFromEnd,
    required this.title,
    required this.barWidth,
  });

  final double containerWidth = 375;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment:
            isFromEnd ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.geologica(
              textStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w100,
                fontSize: 16,
              ),
            ),
          ),
          Stack(
            alignment:
                isFromEnd
                    ? AlignmentDirectional.topEnd
                    : AlignmentDirectional.topStart,
            children: [
              Container(
                width: double.infinity,
                height: 14,
                decoration: BoxDecoration(color: Colors.black12),
              ),
              FractionallySizedBox(
                widthFactor: barWidth,
                child: Container(
                  height: 14,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        isFromEnd ? Color(0xff291D90) : Color(0xffBC1D13),
                        isFromEnd ? Color(0xffBC1D13) : Color(0xff291D90),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
