import 'package:bookly_app/core/utlis/assets.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key, required this.imageUrl});

final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: CachedNetworkImage( 
        fit: BoxFit.fill,
        imageUrl: imageUrl,
        placeholder: (context, url) => Center(
          child: const CircularProgressIndicator()
          ),
        errorWidget:  (context, url, error) => Icon(Icons.access_alarms),
        ),
    );
  }
}
