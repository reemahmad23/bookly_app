
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: buildOutlinedInputBorder(),
        focusedBorder: buildOutlinedInputBorder(),
        hintText: 'Search',
        suffixIcon: IconButton(
          onPressed: (){}, 
          icon: Opacity(
            opacity: .8,
            child: Icon(FontAwesomeIcons.magnifyingGlass,
            size: 22,
            ),
          ),
          ),
      ),
    );
  }

  OutlineInputBorder buildOutlinedInputBorder() {
    return OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(16),
      );
  }
}