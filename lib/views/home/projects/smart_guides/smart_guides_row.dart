
import 'package:flutter/material.dart';
import 'package:the_resume/views/home/projects/widget/project_info.dart';

class SmartGuidesRow extends StatelessWidget {
  const SmartGuidesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: 60.0),
            child: Image(
              image: AssetImage('assets/images/smart_guides.png'),
              height: 350,
            ),
          ),
        ),
        Expanded(
          child: ProjectInfo(
            title: 'Smart Guides',
            description:
                'Smart Guides is a mobile application designed as an extension of an ERP system module, aimed at simplifying the management of operations like tour tracking and data entry for guides. The standout feature of the application is its ability to work offline, enabling tour guides to continue their operations without a computer or internet access. The main challenge of the project was ensuring offline functionality, which was achieved by using Flutter SQL libraries that support working with a local database. The ERP system to which the application is connected was developed with the Python-based Odoo framework. An API was created within the Odoo framework to feed the backend of the application. In future versions, it is planned to use RPC (Remote Procedure Call) protocols to further enhance functionality.',
          ),
        ),
      ],
    );
  }
}