import 'package:bookly/core/responsive/device_type.dart';
import 'package:bookly/core/responsive/get_device_type.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model_items.dart';
import 'package:flutter/material.dart';
import 'features_listView_item.dart';
import 'rating_widget.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key, required this.item}) : super(key: key);
  final BookModelItems item;

  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);
    print(getDeviceType(mediaQueryData));
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: SizedBox(
            width: (getDeviceType(mediaQueryData) == DeviceType.Phone)
                ? MediaQuery.of(context).size.width * 0.6
                : MediaQuery.of(context).size.width * 0.9,
            child: AspectRatio(
              aspectRatio: 1.5 / 2.1,
              child: FeaturesListViewItem(
                  image: item.volumeInfo.imageLinks?.thumbnail ??
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxi6-CoWE4o6BlONAowkhTEeEVBjbo9C_aH0mq0aKA5ZtAEt-R8U4oMVKbCDcHquktvT0&usqp=CAU'),
            ),
          ),
        ),
        Text(
          item.volumeInfo.title!,
          style: Styles.textStyle30,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          item.volumeInfo.authors![0]!,
          style: Styles.captionText18,
        ),
        const SizedBox(
          height: 10,
        ),
        RatingWidget(
          avgRating: item.volumeInfo.averageRating ?? 0,
          ratingsCount: item.volumeInfo.ratingsCount ?? 0,
        ),
      ],
    );
  }
}
