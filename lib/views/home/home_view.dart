import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_resume/controllers/animated_hover_controller.dart';
import 'package:the_resume/views/home/intro/gradient_background_widget.dart';
import 'package:the_resume/views/home/intro/intro_below_responsive_builder.dart';
import 'package:the_resume/views/home/intro/intro_responsive_builder.dart';
import 'package:the_resume/views/home/intro/widget/header.dart';
import 'package:the_resume/views/home/projects/clickia/clickia_column.dart';
import 'package:the_resume/views/home/projects/clickia/clickia_row.dart';
import 'package:the_resume/views/home/projects/widget/projects_responsive_builder.dart';
import 'package:the_resume/views/home/projects/smart_guides/smart_guides_column.dart';
import 'package:the_resume/views/home/projects/smart_guides/smart_guides_row.dart';
import 'package:the_resume/views/home/projects/vpn/vpn_row.dart';
import 'package:the_resume/views/home/projects/vpn/vpn_column.dart';
import 'package:the_resume/views/home/tools_technologies/tools_and_technologies.dart';
import 'package:the_resume/views/home/work_experience/widget/animated_hover_widget.dart';
import 'package:the_resume/views/home/work_experience/widget/work_info_column.dart';
import 'package:the_resume/widgets/centered_view.dart';
import 'package:the_resume/widgets/custom_title.dart';

class HomeView extends StatelessWidget {
  final AnimatedHoverController controller = Get.put(AnimatedHoverController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GradientBackgroundWidget(
              child: CenteredView(
                rightPadding: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Header(),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Expanded(child: IntroResponsiveBuilder()),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              'assets/images/portre.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const CenteredView(child: IntroBelowResponsiveBuilder()),
            const CustomTitle(text: 'Tools and Technologies'),
            const ToolsAndTechnologies(),
            const CustomTitle(text: 'Projects', verticalPadding: 50),
            const ProjectsResponsiveBuilder(
              row: SmartGuidesRow(),
              column: SmartGuidesColumn(),
            ),
            const ProjectsResponsiveBuilder(
              row: ClickiaRow(),
              column: ClickiaColumn(),
            ),
            const ProjectsResponsiveBuilder(
              row: VpnRow(),
              column: VpnColumn(),
            ),
            const CustomTitle(text: 'Work Experience', verticalPadding: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedHoverWidget(
                  assetName: 'assets/images/clickia.png',
                  controller: controller,
                  workInfo: const DorakWorkInfoColumn(),
                ),
                // AnimatedHoverWidget(
                //   assetName: 'images/clickia.png',
                //   controller: controller,
                //   workInfo: const DorakWorkInfoColumn(),
                // ),
                // AnimatedHoverWidget(
                //   assetName: 'images/clickia.png',
                //   controller: controller,
                //   workInfo: const DorakWorkInfoColumn(),
                // ),
                // AnimatedHoverWidget(
                //   assetName: 'images/clickia.png',
                //   controller: controller,
                //   workInfo: const DorakWorkInfoColumn(),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
