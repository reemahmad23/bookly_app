import 'package:bookly_app/core/utlis/assets.dart';
import 'package:bookly_app/features/home/data/presentation/views/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeViewBody(),
    );
  }
}
