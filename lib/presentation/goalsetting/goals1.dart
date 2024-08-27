import 'package:flutter/material.dart';

import '../../core/config/theme/app_colors.dart';

class Goals1 extends StatelessWidget {
  const Goals1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
      children: [
        Text("What is your goal ?",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: AppColors.grey, // Adjust text color as needed
            fontFamily: "Poppins"),
        textAlign: TextAlign.center, // Center text
      ),
      ],
      ),
    );
  }
}
