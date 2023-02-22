import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({
    Key? key,
  }) : super(key: key);

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
                onPressed: () {},
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
                onPressed: () {},
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
