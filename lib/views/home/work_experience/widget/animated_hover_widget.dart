import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_resume/controllers/animated_hover_controller.dart';
import 'package:the_resume/views/home/work_experience/widget/work_info_column.dart';

class AnimatedHoverWidget extends StatelessWidget {
  final String assetName;
  final AnimatedHoverController controller;
  final Widget workInfo;

  const AnimatedHoverWidget({super.key, required this.assetName, required this.controller, required this.workInfo});

  @override
  Widget build(BuildContext context) {
    return Obx(() => MouseRegion(
          onEnter: (_) => controller.onHover(true),
          onExit: (_) => controller.onHover(false),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            width: controller.isHovered.value ? 480 : 160,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(assetName),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                if (controller.isHovered.value)
                  const Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: DorakWorkInfoColumn())),
              ],
            ),
          ),
        ));
  }
}
