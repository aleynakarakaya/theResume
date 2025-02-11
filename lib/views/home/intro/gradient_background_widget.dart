import 'package:flutter/material.dart';

class GradientBackgroundWidget extends StatelessWidget {
  final Widget child;
  const GradientBackgroundWidget(
      {super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(0.8, 1),
          colors: <Color>[
            Color(0xffFF4E42),
            Color(0xff00071C),
          ],
        ),
      ),
      child: child,
    );
  }
}
