class BookModelItemsAccessInfoEpub {
  bool? isAvailable;

  BookModelItemsAccessInfoEpub({
    this.isAvailable,
  });
  BookModelItemsAccessInfoEpub.fromJson(Map<String, dynamic> json) {
    isAvailable = json['isAvailable'];
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['isAvailable'] = isAvailable;
    return data;
  }
}
