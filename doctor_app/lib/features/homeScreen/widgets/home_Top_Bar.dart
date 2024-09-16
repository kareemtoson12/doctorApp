import 'package:doctor_app/core/theming/colors.dart';
import 'package:doctor_app/core/theming/styels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, User',
              style: CustomstextStyels.font18DarkBlue,
            ),
            Text(
              'How are you today?',
              style: CustomstextStyels.font14GrayRegular,
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          backgroundColor: ColorsManger.moreLighterGray,
          child: SvgPicture.asset('assets/svg/Notification.svg'),
        )
      ],
    );
  }
}
