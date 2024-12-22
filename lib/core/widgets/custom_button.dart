import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonText,
    required this.buttonTextColor,
    required this.buttonBackgroundC,
    this.buttonBorderRadius,
    this.fontWeight,
  });

  final String buttonText;
  final Color buttonTextColor;
  final Color buttonBackgroundC;
  final BorderRadius? buttonBorderRadius;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: buttonBackgroundC,
          shape: RoundedRectangleBorder(
            borderRadius: buttonBorderRadius ?? BorderRadius.circular(12),
          ),
        ),
        child: Text(
          buttonText,
          style: Styles.textStyle16.copyWith(
            color: buttonTextColor,
            fontWeight: fontWeight ?? FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
