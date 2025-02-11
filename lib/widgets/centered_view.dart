import 'package:flutter/material.dart';

class CenteredView extends StatelessWidget {
  final Widget child;
  final double? rightPadding;
  final double? maxWidth;
  const CenteredView({
    super.key,
    required this.child,
    this.rightPadding,
    this.maxWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: rightPadding ?? 10, top: 20),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth ?? 1000),
        child: child,
      ),
    );
  }
}
