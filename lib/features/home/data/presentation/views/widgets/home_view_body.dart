

import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utlis/assets.dart';
import 'package:bookly_app/core/utlis/styles.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/featured_books_ist_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 20,
          ),
          Text('Best Seller',
          style: Styles.textStyle18,
          ),
          SizedBox(
            height: 10,
          ),
          BestSellerListViewItem(),
      
        ],
      ),
    );
  }
}


class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
        aspectRatio: 2.5/4 ,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              fit: BoxFit.fill ,
              image: AssetImage(
                AssetsDate.textImage
                ),
            ),
          ),
        ),
      ),
      SizedBox(
        width: 30,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * .5,
            child: Text('Amarita and No bt3m el flmnko',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle20.copyWith(
              fontFamily: kGtSectraFine),
            ),
          ),
          const SizedBox(
              height: 3,
            ),

            Text('Mohammed Taha',
            style: Styles.textStyle14,
            ),
            const SizedBox(
              height: 3,
            ),
            Row(
              children: [
                Text('19.9D',
                style: Styles.textStyle20.copyWith(
                  fontWeight: FontWeight.bold,
                ),),
              ],
            )
        ],
      ),
        ],
      ),
    );
  }
}