import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/similer_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    var fullWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 6),
      child: Column(
        children: [
          CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: fullWidth * 0.22),
            child: const FeatruredListViewItem(),
          ),
          const SizedBox(height: 43),
          Text('The Jungle Book',
              style: Styles.textStyle30.copyWith(
                fontWeight: FontWeight.w600,
              )),
          const SizedBox(height: 6),
          Opacity(
            opacity: .7,
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 18),
          BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(height: 37),
          const BookAction(),
          const SizedBox(height: 50),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          const SimilarBooksListView(),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
