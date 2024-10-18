
import 'package:bookly_app/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, this.mainAxisAlignment = MainAxisAlignment.start});

final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        SizedBox(
          width: 10,
        ),
        Text('4.8',
        style: Styles.textStyle16
        ),
        SizedBox(
          width: 7,
        ),
        Opacity(
          opacity: 1,
          child: Text('(234)',
          style: Styles.textStyle14.copyWith(
            color: const Color(0xff707070)
          ),
          ),
        ),
      ],
    );
  }
}