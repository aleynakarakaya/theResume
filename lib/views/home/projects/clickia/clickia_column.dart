import 'package:flutter/material.dart';
import 'package:the_resume/views/home/projects/widget/project_info.dart';

class ClickiaColumn extends StatelessWidget {
  const ClickiaColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:50.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: const Image(
              image: AssetImage('images/clickia.png'),
              fit: BoxFit.cover,
              height: 230,
            ),
          ),
          const SizedBox(height: 80),
          const ProjectInfo(
              title: 'Clickia',
              description:
                  'Clickia is a digital content platform offering series, movies, anime, manga, and novels. The application\'s television platform was developed with Flutter. During development, managing remote control behaviors presented a challenge, and the diverse content offerings provided the opportunity to utilize a variety of widget libraries.'),
        ],
      ),
    );
  }
}
