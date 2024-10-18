import 'package:bookly_app/core/utlis/styles.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .32),
            child: const CustomListViewItem(),
          ),
          SizedBox(
            height: 10,
          ),
          Text('Amarita & Zicola',
          style: Styles.textStyle30,
          ),
          SizedBox(
            height: 3,
          ),
          Opacity(
            opacity: .7,
            child: Text('Amr Abdelhamied',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),
    );
  }
}

