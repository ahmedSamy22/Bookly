class BookModelItemsSearchInfo {
  String? textSnippet;

  BookModelItemsSearchInfo({
    this.textSnippet,
  });
  BookModelItemsSearchInfo.fromJson(Map<String, dynamic> json) {
    textSnippet = json['textSnippet']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['textSnippet'] = textSnippet;
    return data;
  }
}
