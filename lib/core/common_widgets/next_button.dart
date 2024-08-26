import 'package:flutter/material.dart';
import 'package:physio_fit/core/config/theme/app_colors.dart';

class NextButton extends StatelessWidget {
  final VoidCallback function;
  const NextButton({super.key, required this.function});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: function,
      backgroundColor: Colors.transparent, // Make background transparent to show the gradient
      elevation: 0, // Optional: Remove shadow if not needed
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: AppColors.primaryGradient,
          shape: BoxShape.circle, // Ensures the container remains circular
        ),
        child: const Icon(
          Icons.navigate_next,
          color: Colors.white,
        ),
      ),
    );
  }
}
