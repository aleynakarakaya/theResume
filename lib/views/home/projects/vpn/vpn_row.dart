import 'package:flutter/material.dart';
import 'package:the_resume/views/home/projects/widget/project_info.dart';

class VpnRow extends StatelessWidget {
  const VpnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: 60.0),
            child: Image(
              image: AssetImage('images/smart_guides.png'),
              height: 350,
            ),
          ),
        ),
        Expanded(
          child: ProjectInfo(
              title: 'VPN',
              description:
                  'A Flutter VPN application developed to securely encrypt and keep data private, thus protecting users\' online privacy. The WireGuard protocol was chosen for its strong security and speed advantages. The wireguard_vpn Flutter package was used for the protocol\'s frontend integration.'),
        ),
      ],
    );
  }
}
