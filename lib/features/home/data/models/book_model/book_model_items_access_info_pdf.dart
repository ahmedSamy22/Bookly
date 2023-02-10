class BookModelItemsAccessInfoPdf {
  bool? isAvailable;
  String? acsTokenLink;

  BookModelItemsAccessInfoPdf({
    this.isAvailable,
    this.acsTokenLink,
  });
  BookModelItemsAccessInfoPdf.fromJson(Map<String, dynamic> json) {
    isAvailable = json['isAvailable'];
    acsTokenLink = json['acsTokenLink']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['isAvailable'] = isAvailable;
    data['acsTokenLink'] = acsTokenLink;
    return data;
  }
}
