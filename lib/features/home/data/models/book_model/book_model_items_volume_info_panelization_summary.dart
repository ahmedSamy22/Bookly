class BookModelItemsVolumeInfoPanelizationSummary {
/*
{
  "containsEpubBubbles": false,
  "containsImageBubbles": false
}
*/

  bool? containsEpubBubbles;
  bool? containsImageBubbles;

  BookModelItemsVolumeInfoPanelizationSummary({
    this.containsEpubBubbles,
    this.containsImageBubbles,
  });
  BookModelItemsVolumeInfoPanelizationSummary.fromJson(
      Map<String, dynamic> json) {
    containsEpubBubbles = json['containsEpubBubbles'];
    containsImageBubbles = json['containsImageBubbles'];
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['containsEpubBubbles'] = containsEpubBubbles;
    data['containsImageBubbles'] = containsImageBubbles;
    return data;
  }
}
