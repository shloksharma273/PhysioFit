import 'package:flutter/material.dart';
import 'package:physio_fit/core/common_widgets/custom_button.dart';
import 'package:physio_fit/core/config/theme/app_colors.dart';
import 'package:physio_fit/presentation/onboarding/onboarding_1.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Stack(
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "PhysioFit",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "Everybody Can Train",
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.grey,
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: CustomButton(
                text: "Get Started",
                function: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Onboarding1(),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
