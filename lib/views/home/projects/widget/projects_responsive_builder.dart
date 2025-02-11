import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_resume/widgets/centered_view.dart';

class ProjectsResponsiveBuilder extends StatelessWidget {
  final Widget row;
  final Widget column;
  const ProjectsResponsiveBuilder({super.key, required this.row, required this.column});

  @override
  Widget build(BuildContext context) {
    return CenteredView(
      child: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          final isDesktop =
              sizingInformation.deviceScreenType == DeviceScreenType.desktop;
          final isTablet =
              sizingInformation.deviceScreenType == DeviceScreenType.tablet;
          final isMobile =
              sizingInformation.deviceScreenType == DeviceScreenType.mobile;

          if (isDesktop) {
            return row;
          }
          if (isMobile || isTablet) {
            return column;
          }
          return const SizedBox();
        },
      ),
    );
  }
}


