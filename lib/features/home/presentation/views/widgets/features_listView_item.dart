import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FeaturesListViewItem extends StatelessWidget {
  final String image;
  const FeaturesListViewItem({
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 1.5 / 2.2,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: image,
          errorWidget: (context, url, error) => const Icon(Icons.broken_image),
        ),
      ),
    );
  }
}
