import 'package:bookly_app/core/utlis/app_router.dart';
import 'package:bookly_app/core/utlis/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        children: [
          Image.network(
            AssetsDate.logo,
            height: 20,
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSearchView);
            },
            icon: Icon(
              Icons.search,
              size: 28,
            ),
          ),
        ],
      ),
    );
  }
}
