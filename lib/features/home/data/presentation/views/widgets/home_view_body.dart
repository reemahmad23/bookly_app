import 'package:bookly_app/core/utlis/styles.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/featured_books_ist_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                FeaturedBooksListView(),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Best Seller',
                    style: Styles.textStyle18,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
