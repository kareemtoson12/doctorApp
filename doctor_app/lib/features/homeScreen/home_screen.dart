import 'package:doctor_app/core/theming/colors.dart';
import 'package:flutter/material.dart';

import 'widgets/home_Top_Bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsManger.triblelLighteray,
        body: SafeArea(
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
            child: const SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [HomeTopBar()],
              ),
            ),
          ),
        ));
  }
}
