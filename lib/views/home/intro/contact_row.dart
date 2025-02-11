import 'package:flutter/material.dart';
import 'package:the_resume/views/home/intro/widget/custom_icon_button.dart';
import 'package:the_resume/views/home/intro/widget/resume_button.dart';

class ContactRow extends StatelessWidget {
  const ContactRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        children: [
          CustomIconButton(path: 'icons/linkedin.png'),
          CustomIconButton(path: 'icons/github.png'),
          SizedBox(width: 15.0),
          ResumeButton(),
        ],
      ),
    );
  }
}
