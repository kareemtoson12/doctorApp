import 'package:doctor_app/core/theming/styels.dart';
import 'package:flutter/material.dart';

class DoctorSpecalityText extends StatelessWidget {
  const DoctorSpecalityText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Recommendation Doctor',
          style: CustomstextStyels.fontBold20DarkBlue,
        ),
        const Spacer(),
        Text(
          'See All',
          style: CustomstextStyels.font13RegularGray,
        ),
      ],
    );
    ;
  }
}
