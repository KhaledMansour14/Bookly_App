import 'package:bookly/constant.dart';
import 'package:flutter/material.dart';

class FeatruredListViewItem extends StatelessWidget {
  const FeatruredListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.9 / 4,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.height * 0.30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.red,
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(ConstantValues.testImage),
          ),
        ),
      ),
    );
  }
}