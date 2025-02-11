import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_resume/views/home/intro/contact_row.dart';
import 'package:the_resume/views/home/intro/widget/custom_icon_button.dart';
import 'package:the_resume/views/home/intro/widget/developer_description.dart';
import 'package:the_resume/views/home/intro/widget/developer_intro.dart';
import 'package:the_resume/views/home/intro/widget/resume_button.dart';

class IntroResponsiveBuilder extends StatelessWidget {
  const IntroResponsiveBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        final isDesktop =
            sizingInformation.deviceScreenType == DeviceScreenType.desktop;
        final isTablet =
            sizingInformation.deviceScreenType == DeviceScreenType.tablet;
        final isMobile =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile;

        if (isDesktop) {
          return const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              DeveloperIntro(isBlack: false),
              DeveloperDescription(isBlack: false),
              ContactRow(),
            ],
          );
        }
        if (isTablet) {
          return const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [DeveloperIntro(isBlack: false), ContactRow()],
          );
        }
        if (isMobile) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    CustomIconButton(path: 'icons/linkedin.png'),
                    CustomIconButton(path: 'icons/github.png'),
                  ],
                ),
                ResumeButton(),
              ],
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
