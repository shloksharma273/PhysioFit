import 'package:flutter/material.dart';
import 'package:physio_fit/core/common_widgets/custom_button.dart';
import 'package:physio_fit/core/config/theme/app_images.dart';
import 'package:physio_fit/presentation/goalsetting/welcome_page.dart';

import '../../core/config/theme/app_colors.dart';

class IntroSlider extends StatefulWidget {
  @override
  _IntroSliderState createState() => _IntroSliderState();
}

class _IntroSliderState extends State<IntroSlider> {
  //Controller for the PageView
  PageController controller = PageController();

  final images = [
    AppImages.goals1,
    AppImages.goals2,
    AppImages.goals3,
    AppImages.goals4,
  ];

  int numberOfPages = 3;
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: controller,
        itemCount: numberOfPages,
        itemBuilder: (BuildContext context, int index) {
          return EachPage(images[index]);
        },
      ),
    );
  }
}

class EachPage extends StatelessWidget {
  final String image;

  const EachPage(this.image);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Text(
                "What is your goal ?",
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black, // Adjust text color as needed
                    fontFamily: "Poppins"),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Text(
                "It will help us to choose a best program for you",
                style: const TextStyle(
                    fontSize: 18,
                    color: AppColors.grey,
                    fontFamily: "Poppins" // Adjust text color as needed
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 8.0,
              ),
              Image(
                image: AssetImage(image),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15
                ),
                child: CustomButton(text: "Confirm", function: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WelcomePage(),
                    ),
                  );
                },),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
