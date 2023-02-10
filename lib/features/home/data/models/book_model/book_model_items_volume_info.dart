import 'package:bookly/features/home/data/models/book_model/book_model_items_volume_info_image_links.dart';
import 'package:bookly/features/home/data/models/book_model/book_model_items_volume_info_industry_identifiers.dart';
import 'package:bookly/features/home/data/models/book_model/book_model_items_volume_info_panelization_summary.dart';
import 'package:bookly/features/home/data/models/book_model/book_model_items_volume_info_reading_modes.dart';

class BookModelItemsVolumeInfo {
/*
{
  "title": "Concepts in Programming Languages",
  "authors": [
    "John C. Mitchell"
  ],
  "publisher": "Cambridge University Press",
  "publishedDate": "2003",
  "description": "A comprehensive undergraduate textbook covering both theory and practical design issues, with an emphasis on object-oriented languages.",
  "industryIdentifiers": [
    {
      "type": "ISBN_10",
      "identifier": "0521780985"
    }
  ],
  "readingModes": {
    "text": false,
    "image": true
  },
  "pageCount": 546,
  "printType": "BOOK",
  "categories": [
    "Computers"
  ],
  "averageRating": 3.5,
  "ratingsCount": 5,
  "maturityRating": "NOT_MATURE",
  "allowAnonLogging": false,
  "contentVersion": "1.6.8.0.preview.1",
  "panelizationSummary": {
    "containsEpubBubbles": false,
    "containsImageBubbles": false
  },
  "imageLinks": {
    "smallThumbnail": "http://books.google.com/books/content?id=7Uh8XGfJbEIC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
    "thumbnail": "http://books.google.com/books/content?id=7Uh8XGfJbEIC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
  },
  "language": "en",
  "previewLink": "http://books.google.com.eg/books?id=7Uh8XGfJbEIC&printsec=frontcover&dq=programming&hl=&cd=1&source=gbs_api",
  "infoLink": "http://books.google.com.eg/books?id=7Uh8XGfJbEIC&dq=programming&hl=&source=gbs_api",
  "canonicalVolumeLink": "https://books.google.com/books/about/Concepts_in_Programming_Languages.html?hl=&id=7Uh8XGfJbEIC"
}
*/

  String? title;
  List<String?>? authors;
  String? publisher;
  String? publishedDate;
  String? description;
  List<BookModelItemsVolumeInfoIndustryIdentifiers?>? industryIdentifiers;
  BookModelItemsVolumeInfoReadingModes? readingModes;
  int? pageCount;
  String? printType;
  List<String?>? categories;
  double? averageRating;
  int? ratingsCount;
  String? maturityRating;
  bool? allowAnonLogging;
  String? contentVersion;
  BookModelItemsVolumeInfoPanelizationSummary? panelizationSummary;
  BookModelItemsVolumeInfoImageLinks? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;

  BookModelItemsVolumeInfo({
    this.title,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printType,
    this.categories,
    this.averageRating,
    this.ratingsCount,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });
  BookModelItemsVolumeInfo.fromJson(Map<String, dynamic> json) {
    title = json['title']?.toString();
    if (json['authors'] != null) {
      final v = json['authors'];
      final arr0 = <String>[];
      v.forEach((v) {
        arr0.add(v.toString());
      });
      authors = arr0;
    }
    publisher = json['publisher']?.toString();
    publishedDate = json['publishedDate']?.toString();
    description = json['description']?.toString();
    if (json['industryIdentifiers'] != null) {
      final v = json['industryIdentifiers'];
      final arr0 = <BookModelItemsVolumeInfoIndustryIdentifiers>[];
      v.forEach((v) {
        arr0.add(BookModelItemsVolumeInfoIndustryIdentifiers.fromJson(v));
      });
      industryIdentifiers = arr0;
    }
    readingModes = (json['readingModes'] != null)
        ? BookModelItemsVolumeInfoReadingModes.fromJson(json['readingModes'])
        : null;
    pageCount = json['pageCount']?.toInt();
    printType = json['printType']?.toString();
    if (json['categories'] != null) {
      final v = json['categories'];
      final arr0 = <String>[];
      v.forEach((v) {
        arr0.add(v.toString());
      });
      categories = arr0;
    }
    averageRating = json['averageRating']?.toDouble();
    ratingsCount = json['ratingsCount']?.toInt();
    maturityRating = json['maturityRating']?.toString();
    allowAnonLogging = json['allowAnonLogging'];
    contentVersion = json['contentVersion']?.toString();
    panelizationSummary = (json['panelizationSummary'] != null)
        ? BookModelItemsVolumeInfoPanelizationSummary.fromJson(
            json['panelizationSummary'])
        : null;
    imageLinks = (json['imageLinks'] != null)
        ? BookModelItemsVolumeInfoImageLinks.fromJson(json['imageLinks'])
        : null;
    language = json['language']?.toString();
    previewLink = json['previewLink']?.toString();
    infoLink = json['infoLink']?.toString();
    canonicalVolumeLink = json['canonicalVolumeLink']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    if (authors != null) {
      final v = authors;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v);
      });
      data['authors'] = arr0;
    }
    data['publisher'] = publisher;
    data['publishedDate'] = publishedDate;
    data['description'] = description;
    if (industryIdentifiers != null) {
      final v = industryIdentifiers;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['industryIdentifiers'] = arr0;
    }
    if (readingModes != null) {
      data['readingModes'] = readingModes!.toJson();
    }
    data['pageCount'] = pageCount;
    data['printType'] = printType;
    if (categories != null) {
      final v = categories;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v);
      });
      data['categories'] = arr0;
    }
    data['averageRating'] = averageRating;
    data['ratingsCount'] = ratingsCount;
    data['maturityRating'] = maturityRating;
    data['allowAnonLogging'] = allowAnonLogging;
    data['contentVersion'] = contentVersion;
    if (panelizationSummary != null) {
      data['panelizationSummary'] = panelizationSummary!.toJson();
    }
    if (imageLinks != null) {
      data['imageLinks'] = imageLinks!.toJson();
    }
    data['language'] = language;
    data['previewLink'] = previewLink;
    data['infoLink'] = infoLink;
    data['canonicalVolumeLink'] = canonicalVolumeLink;
    return data;
  }
}
