import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model_items.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({
    Key? key,
    required this.item,
  }) : super(key: key);

  final BookModelItems item;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: MaterialButton(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(10.0),
                    bottomStart: Radius.circular(10.0),
                  ),
                ),
                color: Colors.white,
                onPressed: () {
                  GoRouter.of(context)
                      .push(AppRouter.kBookPreviewRouteKey, extra: item);
                },
                child: Text(
                  'free',
                  style: Styles.textStyle15.copyWith(color: Colors.black),
                ),
              ),
            ),
            Expanded(
              child: MaterialButton(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.only(
                    topEnd: Radius.circular(10.0),
                    bottomEnd: Radius.circular(10.0),
                  ),
                ),
                color: const Color(0xffEF8262),
                onPressed: () {
                  GoRouter.of(context)
                      .push(AppRouter.kBookPreviewRouteKey, extra: item);
                },
                child: const Text(
                  'Free preview',
                  style: Styles.textStyle15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
