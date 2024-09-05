import 'package:flutter/material.dart';
import 'package:physio_fit/core/common_widgets/custom_button.dart';
import 'package:physio_fit/core/config/theme/app_images.dart';
import 'package:physio_fit/core/config/theme/globals.dart'
as globals;

import '../../core/config/theme/app_colors.dart'; // Import the globals file

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 15
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage(AppImages.goals4),
              ),

              const SizedBox(
                height: 20,
              ),

              const Text(
                "Congratulations, You Have Finished Your Workout",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black, // Adjust text color as needed
                    fontFamily: "Poppins"),
                textAlign: TextAlign.left,
              ),

              const SizedBox(
                height: 10,
              ),

              const Text("Exercises is king and nutrition is queen. Combine the two and you will have a kingdom",
                style: TextStyle(
                    fontSize: 18,
                    color: AppColors.grey,
                    fontFamily: "Poppins" // Adjust text color as needed
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: 150,
              ),

              const Text("-Jack Lalanne",
                style: TextStyle(
                    fontSize: 18,
                    color: AppColors.grey,
                    fontFamily: "Poppins" // Adjust text color as needed
                ),
                textAlign: TextAlign.center,
              ),

              CustomButton(text: "Back To Home", function: (){})
            ],
          ),
        ),
      ),
    );
  }
}
