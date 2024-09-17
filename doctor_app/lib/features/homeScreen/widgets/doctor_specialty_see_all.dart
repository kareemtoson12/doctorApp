import 'package:doctor_app/core/theming/styels.dart';
import 'package:flutter/material.dart';

class DoctorsSpecialitySeeAll extends StatelessWidget {
  const DoctorsSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Doctors Speciality',
          style: CustomstextStyels.font18DarkBlue,
        ),
        const Spacer(),
        Text(
          'See All',
          style: CustomstextStyels.font15regularblue,
        ),
      ],
    );
  }
}
