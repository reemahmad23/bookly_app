import 'package:bookly_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errM});

final String errM;
  @override
  Widget build(BuildContext context) {
    return Text(
      errM,
    style : Styles.textStyle18,
    );
  }
}