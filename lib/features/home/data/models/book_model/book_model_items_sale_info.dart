class BookModelItemsSaleInfo {
  String? country;
  String? saleability;
  bool? isEbook;

  BookModelItemsSaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
  });
  BookModelItemsSaleInfo.fromJson(Map<String, dynamic> json) {
    country = json['country']?.toString();
    saleability = json['saleability']?.toString();
    isEbook = json['isEbook'];
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['country'] = country;
    data['saleability'] = saleability;
    data['isEbook'] = isEbook;
    return data;
  }
}
