import 'package:doctor_app/core/theming/styels.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi, User!', style: CustomstextStyels.font18DarkBlue),
            Text(
              'How Are you Today?',
              style: CustomstextStyels.font18DarkBlue,
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24.0,
          child: SvgPicture.asset(
            'assets/svg/Notification.svg',
          ),
        )
      ],
    );
  }
}
