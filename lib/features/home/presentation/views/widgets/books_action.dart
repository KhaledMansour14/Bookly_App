import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: const Row(
        children: [
          Expanded(
            child: CustomButton(
              buttonText: '19.99\$',
              buttonTextColor: Colors.black,
              buttonBackgroundC: Colors.white,
              buttonBorderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              buttonText: 'Free preview',
              buttonTextColor: Colors.white,
              buttonBackgroundC: Color(0xffe67964),
              buttonBorderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
