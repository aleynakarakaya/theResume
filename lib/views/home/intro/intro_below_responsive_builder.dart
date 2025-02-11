
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_resume/views/home/intro/widget/developer_description.dart';
import 'package:the_resume/views/home/intro/widget/developer_intro.dart';

class IntroBelowResponsiveBuilder extends StatelessWidget {
  const IntroBelowResponsiveBuilder({super.key});

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
          return const SizedBox();
        }
        if (isTablet) {
          return const DeveloperDescription(isBlack: true);
        }
        if (isMobile) {
          return const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DeveloperIntro(isBlack: true),
              DeveloperDescription(isBlack: true),
            ],
          );
        }
        return const SizedBox();
      },
    );
  }
}
