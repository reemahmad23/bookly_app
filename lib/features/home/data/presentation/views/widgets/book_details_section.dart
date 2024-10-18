
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

