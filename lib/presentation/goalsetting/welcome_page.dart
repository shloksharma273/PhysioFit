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

              Text(
                "Welcome, ${globals.userName}",
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black, // Adjust text color as needed
                    fontFamily: "Poppins"),
                textAlign: TextAlign.left,
              ),

              const SizedBox(
                height: 10,
              ),

              const Text("You are all set now, let’s reach your goals together with us",
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

              CustomButton(text: "Go To Home", function: (){Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const WelcomePage(),
                ),
              );})
            ],
          ),
        ),
      ),
    );
  }
}
