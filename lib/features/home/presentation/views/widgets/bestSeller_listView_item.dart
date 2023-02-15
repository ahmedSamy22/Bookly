import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model_items.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'rating_widget.dart';

class BestSellerListViewItem extends StatelessWidget {
  final BookModelItems item;
  const BestSellerListViewItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookRouteKey);
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: CachedNetworkImage(
                height: 120,
                width: 90,
                fit: BoxFit.fill,
                imageUrl: item.volumeInfo.imageLinks.thumbnail,
                errorWidget: (context, url, error) =>
                    const Icon(Icons.broken_image),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        item.volumeInfo.title!,
                        style: Styles.textStyle20,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      '${item.volumeInfo.authors![0]!}',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.captionText14,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const Text(
                          'free',
                          style: Styles.textStyle15,
                        ),
                        const Spacer(),
                        if (item.volumeInfo.averageRating != null)
                          RatingWidget(
                            avgRating: item.volumeInfo.averageRating,
                            ratingsCount: item.volumeInfo.ratingsCount,
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
