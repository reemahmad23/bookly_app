

import 'package:bookly_app/features/home/data/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/featured_books_ist_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        FeaturedBooksListView(),
        SizedBox(
          height: 50,
        ),
        Text('Best Seller'),

      ],
    );
  }
}
