import 'package:flutter/material.dart';
import 'package:the_resume/views/home/work_experience/widget/work_info_text.dart';

class DorakWorkInfoColumn extends StatelessWidget {
  const DorakWorkInfoColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WorkInfoText(
          text: 'Dorak Holding - Pigomass',
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
        WorkInfoText(
          text: '(11/2023 - Present)',
          fontSize: 16,
          fontWeight: FontWeight.w100,
        ),
        WorkInfoText(
          text: 'Full Stack Developer',
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
        SizedBox(height: 10),
        //the reason why the hard-coding is animation didn't work as expected
        WorkInfoText(text: 'Enhancing an ERP system developed for'),
        WorkInfoText(text: 'the tourism sector using the Python-based'),
        WorkInfoText(text: 'Odoo framework.'),
        SizedBox(height: 10),
        WorkInfoText(text: 'Developing mobile applications for various'),
        WorkInfoText(text: 'system modules.'),
        SizedBox(height: 10),
        WorkInfoText(text: 'Designing UI/UX for mobile and web'),
        WorkInfoText(text: 'projects.'),
        SizedBox(height: 10),
        WorkInfoText(text: 'Publishing applications on app stores.'),
      ],
    );
  }
}

class ClickiaWorkInfoColumn extends StatelessWidget {
  const ClickiaWorkInfoColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WorkInfoText(
          text: 'Clickia',
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
        WorkInfoText(
          text: '(03/2023 - 10/2023)',
          fontSize: 16,
          fontWeight: FontWeight.w100,
        ),
        WorkInfoText(
          text: 'Flutter Developer',
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
        SizedBox(height: 10),
        //the reason why the hard-coding is animation didn't work as expected
        WorkInfoText(text: 'Developing a digital broadcasting'),
        WorkInfoText(text: 'application for a television platform.'),
        SizedBox(height: 10),
        WorkInfoText(text: 'Developing a mobile VPN application.'),
        SizedBox(height: 10),
        WorkInfoText(text: 'Enhancing the mobile application of a'),
        WorkInfoText(text: 'digital broadcasting platform.'),
        SizedBox(height: 10),
        WorkInfoText(text: 'Designing UI/UX for mobile and television'),
        WorkInfoText(text: 'projects.'),
        SizedBox(height: 10),
        WorkInfoText(text: 'Publishing applications on app stores.'),
      ],
    );
  }
}

class ReederWorkInfoColumn extends StatelessWidget {
  const ReederWorkInfoColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WorkInfoText(
          text: 'Reeder',
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
        WorkInfoText(
          text: '(09/2022 - 12/2022)',
          fontSize: 16,
          fontWeight: FontWeight.w100,
        ),
        WorkInfoText(
          text: 'Flutter Developer',
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
        SizedBox(height: 10),
        //the reason why the hard-coding is animation didn't work as expected
        WorkInfoText(text: 'Conducting ERP system analysis in the '),
        WorkInfoText(text: 'technical service and production areas.'),
        SizedBox(height: 10),
        WorkInfoText(text: 'Designing UI/UX for mobile and television'),
        WorkInfoText(text: 'projects.'),
      ],
    );
  }
}

class VakifWorkInfoColumn extends StatelessWidget {
  const VakifWorkInfoColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WorkInfoText(
            text: 'Türkiye Vakıflar Bankası T.A.O.',
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
          WorkInfoText(
            text: '(09/2021 - 11/2021)',
            fontSize: 16,
            fontWeight: FontWeight.w100,
          ),
          WorkInfoText(
            text: 'Kotlin Developer Intership',
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
          SizedBox(height: 10),
          //the reason why the hard-coding is animation didn't work as expected
          WorkInfoText(text: 'Developing a cryptocurrency tracing'),
          WorkInfoText(text: 'application by using Kotlin.'),
        ]);
  }
}
