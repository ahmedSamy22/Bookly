import 'package:bookly/constants.dart';
import 'package:bookly/core/custom_widgets/custom_error_widget.dart';
import 'package:bookly/features/home/data/models/book_model/book_model_items.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BookPreviewView extends StatelessWidget {
  const BookPreviewView({Key? key, required this.item}) : super(key: key);

  final BookModelItems item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(Icons.close),
        ),
        title: Text(item.volumeInfo.title ?? ''),
      ),
      body: WebView(
        initialUrl: item.volumeInfo.previewLink ,
        onWebResourceError: (error) => CustomErrorWidget(errMessage: error.description),
      ),
    );
  }
}
