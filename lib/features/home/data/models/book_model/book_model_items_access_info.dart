import 'package:bookly/features/home/data/models/book_model/book_model_items_access_info_epub.dart';
import 'package:bookly/features/home/data/models/book_model/book_model_items_access_info_pdf.dart';

class BookModelItemsAccessInfo {
  String? country;
  String? viewability;
  bool? embeddable;
  bool? publicDomain;
  String? textToSpeechPermission;
  BookModelItemsAccessInfoEpub? epub;
  BookModelItemsAccessInfoPdf? pdf;
  String? webReaderLink;
  String? accessViewStatus;
  bool? quoteSharingAllowed;

  BookModelItemsAccessInfo({
    this.country,
    this.viewability,
    this.embeddable,
    this.publicDomain,
    this.textToSpeechPermission,
    this.epub,
    this.pdf,
    this.webReaderLink,
    this.accessViewStatus,
    this.quoteSharingAllowed,
  });
  BookModelItemsAccessInfo.fromJson(Map<String, dynamic> json) {
    country = json['country']?.toString();
    viewability = json['viewability']?.toString();
    embeddable = json['embeddable'];
    publicDomain = json['publicDomain'];
    textToSpeechPermission = json['textToSpeechPermission']?.toString();
    epub = (json['epub'] != null)
        ? BookModelItemsAccessInfoEpub.fromJson(json['epub'])
        : null;
    pdf = (json['pdf'] != null)
        ? BookModelItemsAccessInfoPdf.fromJson(json['pdf'])
        : null;
    webReaderLink = json['webReaderLink']?.toString();
    accessViewStatus = json['accessViewStatus']?.toString();
    quoteSharingAllowed = json['quoteSharingAllowed'];
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['country'] = country;
    data['viewability'] = viewability;
    data['embeddable'] = embeddable;
    data['publicDomain'] = publicDomain;
    data['textToSpeechPermission'] = textToSpeechPermission;
    if (epub != null) {
      data['epub'] = epub!.toJson();
    }
    if (pdf != null) {
      data['pdf'] = pdf!.toJson();
    }
    data['webReaderLink'] = webReaderLink;
    data['accessViewStatus'] = accessViewStatus;
    data['quoteSharingAllowed'] = quoteSharingAllowed;
    return data;
  }
}
