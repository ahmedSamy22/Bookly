class BookModelItemsVolumeInfoImageLinks {
/*
{
  "smallThumbnail": "http://books.google.com/books/content?id=7Uh8XGfJbEIC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
  "thumbnail": "http://books.google.com/books/content?id=7Uh8XGfJbEIC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
}
*/

  late String smallThumbnail;
  late String thumbnail;

  BookModelItemsVolumeInfoImageLinks({
    required this.smallThumbnail,
    required this.thumbnail,
  });
  BookModelItemsVolumeInfoImageLinks.fromJson(Map<String, dynamic> json) {
    smallThumbnail = json['smallThumbnail'].toString();
    thumbnail = json['thumbnail'].toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['smallThumbnail'] = smallThumbnail;
    data['thumbnail'] = thumbnail;
    return data;
  }
}
