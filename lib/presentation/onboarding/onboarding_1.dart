import 'package:flutter/material.dart';
import 'package:physio_fit/core/common_widgets/next_button.dart';
import 'package:physio_fit/core/config/theme/app_colors.dart';
import 'package:physio_fit/core/config/theme/app_images.dart';
import 'package:physio_fit/presentation/onboarding/onboarding_2.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height *
                0.5, // Adjust this value to cover the upper half
            child: const Image(
              image: AssetImage(AppImages.introBG1),
              fit: BoxFit
                  .cover, // Use BoxFit.cover to ensure the image covers the area without distortion
            ),
          ),

          // Foreground Content
          Positioned(
            top: MediaQuery.of(context).size.height * 0.5 +
                60, // Start below the image
            left: 0,
            right: 0,
            child: const Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 20.0), // Add padding to prevent overflow
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Track Your Goal",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black, // Adjust text color as needed
                        fontFamily: "Poppins"),
                    textAlign: TextAlign.left, // Center text
                  ),
                  SizedBox(height: 10), // Add space between text
                  Text(
                    "Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals",
                    style: TextStyle(
                        fontSize: 18,
                        color: AppColors.grey,
                        fontFamily: "Poppins" // Adjust text color as needed
                        ),
                    textAlign: TextAlign.left, // Center text
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: NextButton(
          function: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Onboarding2(),
              ),
            );
          },
        ),
      ),
    );
  }
}
