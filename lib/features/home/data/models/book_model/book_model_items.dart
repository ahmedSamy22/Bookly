import 'package:bookly/features/home/data/models/book_model/book_model_items-access_info.dart';
import 'package:bookly/features/home/data/models/book_model/book_model_items_access_info.dart';
import 'package:bookly/features/home/data/models/book_model/book_model_items_sale_info.dart';
import 'package:bookly/features/home/data/models/book_model/book_model_items_volume_info.dart';

class BookModelItems {
/*
{
  "kind": "books#volume",
  "id": "7Uh8XGfJbEIC",
  "etag": "KTzsq6AEQB0",
  "selfLink": "https://www.googleapis.com/books/v1/volumes/7Uh8XGfJbEIC",
  "volumeInfo": {
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
  },
  "saleInfo": {
    "country": "EG",
    "saleability": "NOT_FOR_SALE",
    "isEbook": false
  },
  "accessInfo": {
    "country": "EG",
    "viewability": "PARTIAL",
    "embeddable": true,
    "publicDomain": false,
    "textToSpeechPermission": "ALLOWED",
    "epub": {
      "isAvailable": false
    },
    "pdf": {
      "isAvailable": true,
      "acsTokenLink": "http://books.google.com.eg/books/download/Concepts_in_Programming_Languages-sample-pdf.acsm?id=7Uh8XGfJbEIC&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
    },
    "webReaderLink": "http://play.google.com/books/reader?id=7Uh8XGfJbEIC&hl=&source=gbs_api",
    "accessViewStatus": "SAMPLE",
    "quoteSharingAllowed": false
  },
  "searchInfo": {
    "textSnippet": "A comprehensive undergraduate textbook covering both theory and practical design issues, with an emphasis on object-oriented languages."
  }
}
*/

  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  BookModelItemsVolumeInfo? volumeInfo;
  BookModelItemsSaleInfo? saleInfo;
  BookModelItemsAccessInfo? accessInfo;
  BookModelItemsSearchInfo? searchInfo;

  BookModelItems({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  });
  BookModelItems.fromJson(Map<String, dynamic> json) {
    kind = json['kind']?.toString();
    id = json['id']?.toString();
    etag = json['etag']?.toString();
    selfLink = json['selfLink']?.toString();
    volumeInfo = (json['volumeInfo'] != null)
        ? BookModelItemsVolumeInfo.fromJson(json['volumeInfo'])
        : null;
    saleInfo = (json['saleInfo'] != null)
        ? BookModelItemsSaleInfo.fromJson(json['saleInfo'])
        : null;
    accessInfo = (json['accessInfo'] != null)
        ? BookModelItemsAccessInfo.fromJson(json['accessInfo'])
        : null;
    searchInfo = (json['searchInfo'] != null)
        ? BookModelItemsSearchInfo.fromJson(json['searchInfo'])
        : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['kind'] = kind;
    data['id'] = id;
    data['etag'] = etag;
    data['selfLink'] = selfLink;
    if (volumeInfo != null) {
      data['volumeInfo'] = volumeInfo!.toJson();
    }
    if (saleInfo != null) {
      data['saleInfo'] = saleInfo!.toJson();
    }
    if (accessInfo != null) {
      data['accessInfo'] = accessInfo!.toJson();
    }
    if (searchInfo != null) {
      data['searchInfo'] = searchInfo!.toJson();
    }
    return data;
  }
}
