import 'package:bookly_app/core/utlis/styles.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .32),
            child: const CustomListViewItem(),
          ),
          SizedBox(
            height: 10,
          ),
          Text('Amarita & Zicola',
          style: Styles.textStyle30,
          ),
          SizedBox(
            height: 3,
          ),
          Opacity(
            opacity: .7,
            child: Text('Amr Abdelhamied',
            style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
            ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          SizedBox(
            height: 10,
          ),
          BookAction(),
        ],
      ),
    );
  }
}

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: '19.99D',
              textColor: Colors.black,
              backgroundColor: Colors.white,
              borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
              ),
            ),
            ),
            Expanded(
            child: CustomButton(
              fontSize: 16,
              text: 'Free Preview',
              textColor: Colors.white,
              backgroundColor: Color(0xffEF8252),
              borderRadius: BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
              ),
            ),
            ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, 
    required this.backgroundColor, 
    required this.textColor, 
    this.borderRadius, 
    required this.text, 
    this.fontSize,
  });
final String text;  
final Color backgroundColor;
final Color textColor;
final BorderRadius? borderRadius;
final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius:borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        child: Text( text,
          style: Styles.textStyle16.copyWith(
            color: textColor,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}