import 'package:bookly/core/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featrued_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        CustomAppBar(),
        FeaturedBooksListView(),
        SizedBox(
          height: 32,
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: Text('Best Seller', style: Styles.titleMedium)),
      ],
    );
  }
}
