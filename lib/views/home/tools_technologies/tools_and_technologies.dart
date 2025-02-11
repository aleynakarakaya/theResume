import 'package:flutter/material.dart';
import 'package:the_resume/views/home/tools_technologies/widget/percentage_bar.dart';
import 'package:the_resume/widgets/centered_view.dart';
class ToolsAndTechnologies extends StatelessWidget {
  const ToolsAndTechnologies({super.key});

  @override
  Widget build(BuildContext context) {
    return const CenteredView(
      maxWidth: 800,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              children: [
                PercentageBar(
                  isFromEnd: true,
                  title: 'Flutter %65',
                  barWidth: 0.65,
                ),
                PercentageBar(
                  isFromEnd: true,
                  title: 'Python %60',
                  barWidth: 0.6,
                ),
                PercentageBar(
                  isFromEnd: true,
                  title: 'Kotlin %35',
                  barWidth: 0.35,
                ),
                PercentageBar(
                  isFromEnd: true,
                  title: 'Odoo %60',
                  barWidth: 0.6,
                ),
                PercentageBar(
                  isFromEnd: true,
                  title: 'HTML %50',
                  barWidth: 0.5,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                PercentageBar(
                  isFromEnd: false,
                  title: 'Restful API %75',
                  barWidth: 0.75,
                ),
                PercentageBar(
                  isFromEnd: false,
                  title: 'Figma & AdobeXD %80',
                  barWidth: 0.8,
                ),
                PercentageBar(
                  isFromEnd: false,
                  title: 'Git %60',
                  barWidth: 0.6,
                ),
                PercentageBar(
                  isFromEnd: false,
                  title: 'Fribase %40',
                  barWidth: 0.4,
                ),
                PercentageBar(
                  isFromEnd: false,
                  title: 'CSS %50',
                  barWidth: 0.5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
