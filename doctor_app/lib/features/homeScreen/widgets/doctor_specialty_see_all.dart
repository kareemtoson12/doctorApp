import 'package:doctor_app/core/theming/styels.dart';
import 'package:flutter/material.dart';

class DoctorSpecialtySeeAll extends StatelessWidget {
  const DoctorSpecialtySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Doctors Speciality',
          style: CustomstextStyels.fontBold20DarkBlue,
        ),
        const Spacer(),
        Text(
          'See All',
          style: CustomstextStyels.font13RegularGray,
        ),
      ],
    );
  }
}
