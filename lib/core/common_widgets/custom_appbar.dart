import 'package:flutter/material.dart';
import 'package:physio_fit/core/config/theme/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:physio_fit/core/config/theme/app_vectors.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;

  const CustomAppbar({
    this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(
        child: Text(
          title ?? "",
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 18,
            color: AppColors.grey,
            fontFamily: "Poppins", // Adjust text color as needed
          ),
        ),
      ),
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Container(
          width: 40, // Set width to 50
          height: 40, // Set height to 50
          decoration: BoxDecoration(
            color: AppColors.textFieldBg,
            shape: BoxShape.rectangle, // Use rectangle shape
            borderRadius: BorderRadius.circular(12), // Apply rounded corners
          ),
          child: const Icon(
            Icons.arrow_back_ios_new,
            size: 15,
            color: AppColors.black, // Set icon color to ensure it's visible
          ),
        ),
      ),
      actions: [
        Container(
          width: 40, // Set the desired width
          height: 40, // Set the desired height
          margin:
              const EdgeInsets.only(right: 8.0), // Add some margin if needed
          decoration: BoxDecoration(
            color: AppColors.textFieldBg,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: SvgPicture.asset(
              AppVectors.options,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
