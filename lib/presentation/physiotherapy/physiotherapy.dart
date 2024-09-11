import 'package:flutter/material.dart';
import 'package:physio_fit/core/common_widgets/custom_appbar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:physio_fit/core/config/theme/app_vectors.dart';
import 'package:physio_fit/core/common_widgets/custom_button.dart';
import 'package:physio_fit/presentation/physiotherapy/elbow.dart';
import 'package:physio_fit/presentation/physiotherapy/knees.dart';
import 'package:physio_fit/presentation/physiotherapy/neck.dart';

class Physiotherapy extends StatelessWidget {
  const Physiotherapy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppbar(
          title: "Choose Excercise",
        ),
        body: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: SvgPicture.asset(
                AppVectors.physiotherapy,
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 130, left: 250, right: 20),
                child: Column(
                  children: [
                    CustomButton(text: "Neck", function: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const Neck(),
                        ),
                      );
                    },),

                    const SizedBox(height: 15),

                    CustomButton(text: "Shoulder", function: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const ElbowScreen(),
                        ),
                      );
                    },),

                    const SizedBox(height: 15),

                    CustomButton(
                      text: "Elbow",
                      function: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ElbowScreen(),
                          ),
                        );
                      },
                    ),

                    const SizedBox(height: 15),

                    CustomButton(text: "Wrist", function: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const ElbowScreen(),
                        ),
                      );
                    },),

                    const SizedBox(height: 15),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 250, top: 420),
                child: Column(
                  children: [
                    CustomButton(text: "Waist", function: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const Knees(),
                        ),
                      );
                    } ),

                    const SizedBox(height: 15),

                    CustomButton(text: "Legs", function: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const Knees(),
                        ),
                      );
                    }),

                    const SizedBox(height: 15),

                    CustomButton(text: "Knees", function: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const Knees(),
                        ),
                      );
                    },),

                    const SizedBox(height: 15),

                    CustomButton(text: "Ankle", function: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const Knees(),
                        ),
                      );
                    }),

                    const SizedBox(height: 15),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
