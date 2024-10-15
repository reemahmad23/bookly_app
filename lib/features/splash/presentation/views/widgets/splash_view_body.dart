import 'package:bookly_app/core/utlis/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,

      children: [
        Image.network(AssetsDate.logo),
        SizedBox(
          height: 4,
        ),
        Text('Read Free Books',
        textAlign: TextAlign.center,
        ),
      ],
      
    );
  }
}