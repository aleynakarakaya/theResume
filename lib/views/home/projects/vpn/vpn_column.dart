import 'package:flutter/material.dart';
import 'package:the_resume/views/home/projects/widget/project_info.dart';

class VpnColumn extends StatelessWidget {
  const VpnColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Image(image: AssetImage('images/smart_guides.png'), height: 350),
        SizedBox(height: 80),
        ProjectInfo(
          title: 'VPN',
          description: 'A Flutter VPN application developed to securely encrypt and keep data private, thus protecting users\' online privacy. The WireGuard protocol was chosen for its strong security and speed advantages. The wireguard_vpn Flutter package was used for the protocol\'s frontend integration.'
        ),
      ],
    );
  }
}
