import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final String path;
  const CustomIconButton({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Image(image: AssetImage(path), height: 25),
    );
  }
}
