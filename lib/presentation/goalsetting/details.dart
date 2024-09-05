import 'package:flutter/material.dart';
import 'package:physio_fit/core/common_widgets/custom_button.dart';
import 'package:physio_fit/core/config/theme/app_colors.dart';
import 'package:physio_fit/core/config/theme/app_images.dart';
import 'package:physio_fit/presentation/goalsetting/intro_slider.dart';
import 'package:physio_fit/core/config/theme/globals.dart' as globals; // Import the globals file
import 'package:flutter/material.dart';
import 'package:physio_fit/core/common_widgets/custom_button.dart';
import 'package:physio_fit/core/config/theme/app_colors.dart';
import 'package:physio_fit/core/config/theme/app_images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:physio_fit/core/config/theme/app_vectors.dart';
import 'package:physio_fit/presentation/goalsetting/intro_slider.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  String? _selectedGender; // Set to null initially
  final TextEditingController nameController =
  TextEditingController(); // Controller for name TextField
  final TextEditingController _weightController =
  TextEditingController(); // Controller for name Weight
  final TextEditingController _heightController =
  TextEditingController(); // Controller for name Weight

  @override
  void dispose() {
    nameController
        .dispose(); // Dispose the controller when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.42,
            child: const Image(
              image: AssetImage(AppImages.login),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.42 + 20,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Let’s complete your profile",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.black, // Adjust text color as needed
                      fontFamily: "Poppins"),
                  textAlign: TextAlign.center, // Center text
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "It will help us to know more about you!",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: AppColors.grey, // Adjust text color as needed
                      fontFamily: "Poppins"),
                  textAlign: TextAlign.center, // Center text
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.textFieldBg,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 53,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            AppVectors.gender,
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: DropdownButtonFormField<String>(
                              hint: const Text(
                                "Choose Gender",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: AppColors
                                        .textColor, // Adjust text color as needed
                                    fontFamily: "Poppins"),
                              ),
                              value: _selectedGender,
                              decoration: InputDecoration(
                                contentPadding:
                                const EdgeInsets.symmetric(horizontal: 10),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      15), // Customize the border radius
                                  borderSide: const BorderSide(
                                    color: AppColors.textFieldBg,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      15), // Customize the border radius
                                  borderSide: const BorderSide(
                                    color: AppColors
                                        .textFieldBg, // Change the color as needed
                                  ),
                                ),
                                filled: true,
                                fillColor: AppColors.textFieldBg,
                              ),
                              items: <String>[
                                'Male',
                                'Female'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        color: AppColors
                                            .textColor, // Adjust text color as needed
                                        fontFamily: "Poppins"),
                                  ),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedGender = newValue;
                                });
                              },
                              dropdownColor: AppColors
                                  .textFieldBg, // Change dropdown background color
                              icon: const Icon(Icons.arrow_drop_down,
                                  color: AppColors.textColor),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.textFieldBg,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 53,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Icon(
                            Icons.account_circle_outlined,
                            color: AppColors.iconColor.withOpacity(0.65),
                            size: 20,
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: TextField(
                              controller:
                              nameController, // Attach controller to TextField
                              decoration: const InputDecoration(
                                hintText: 'Enter Your Name',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: AppColors
                                        .textColor, // Adjust text color as needed
                                    fontFamily:
                                    "Poppins"), // Optional: Change hint color
                                border: InputBorder
                                    .none, // Optional: Remove underline border
                              ),
                              style: const TextStyle(
                                  color: Colors
                                      .white), // Optional: Change text color
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.textFieldBg,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 53,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Icon(
                            Icons.monitor_weight_outlined,
                            color: AppColors.iconColor.withOpacity(0.65),
                            size: 20,
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: TextField(
                              controller:
                              _weightController, // Attach controller to TextField
                              decoration: const InputDecoration(
                                hintText: 'Your Weight',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: AppColors
                                        .textColor, // Adjust text color as needed
                                    fontFamily:
                                    "Poppins"), // Optional: Change hint color
                                border: InputBorder
                                    .none, // Optional: Remove underline border
                              ),
                              style: const TextStyle(
                                  color: Colors
                                      .white), // Optional: Change text color
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.textFieldBg,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 53,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            AppVectors.height,
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: TextField(
                              controller:
                              _heightController, // Attach controller to TextField
                              decoration: const InputDecoration(
                                hintText: 'How Long',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: AppColors
                                        .textColor, // Adjust text color as needed
                                    fontFamily:
                                    "Poppins"), // Optional: Change hint color
                                border: InputBorder
                                    .none, // Optional: Remove underline border
                              ),
                              style: const TextStyle(
                                  color: Colors
                                      .white), // Optional: Change text color
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: CustomButton(text: "Next", function: () {
                    globals.userName = nameController.text;
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => IntroSlider(),
                      ),
                    );
                  },),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

