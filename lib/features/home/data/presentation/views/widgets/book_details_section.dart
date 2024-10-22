import 'package:bookly_app/core/utlis/styles.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/book_action.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .34),
          child: const CustomListViewItem(
            imageUrl: 'data:image/jpeg;base64,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',
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Amarita & Zicola',
          style: Styles.textStyle30,
        ),
        SizedBox(
          height: 3,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            'Amr Abdelhamied',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(
          height: 10,
        ),
        BookAction(),
      ],
    );
  }
}
