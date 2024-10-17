
import 'package:bookly_app/features/home/data/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      
      physics: NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: ( context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: BestSellerListViewItem(),
        );
        },
      
    );
  }
}