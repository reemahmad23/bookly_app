
import 'package:bookly_app/core/utlis/styles.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('You Can Also Like',
        style: Styles.textStyle14.copyWith(
          fontWeight: FontWeight.bold,
        ),
        ),
            SizedBox(
              height: 10,
            ),
            SimilarBooksListView(),
      ],
    );
  }
}