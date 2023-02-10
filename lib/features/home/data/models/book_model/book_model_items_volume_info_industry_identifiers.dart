class BookModelItemsVolumeInfoIndustryIdentifiers {
/*
{
  "type": "ISBN_10",
  "identifier": "0521780985"
}
*/

  String? type;
  String? identifier;

  BookModelItemsVolumeInfoIndustryIdentifiers({
    this.type,
    this.identifier,
  });
  BookModelItemsVolumeInfoIndustryIdentifiers.fromJson(
      Map<String, dynamic> json) {
    type = json['type']?.toString();
    identifier = json['identifier']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['type'] = type;
    data['identifier'] = identifier;
    return data;
  }
}
