class BookModelItemsVolumeInfoReadingModes {
/*
{
  "text": false,
  "image": true
}
*/

  bool? text;
  bool? image;

  BookModelItemsVolumeInfoReadingModes({
    this.text,
    this.image,
  });
  BookModelItemsVolumeInfoReadingModes.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    image = json['image'];
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['text'] = text;
    data['image'] = image;
    return data;
  }
}
